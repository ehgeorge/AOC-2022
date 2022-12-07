.input.f:read0 `:5/input.txt;

.aoc.fileSplit:.input.f?"";
.aoc.stackNs:s where not null s:"J"$" " vs .input.f[.aoc.fileSplit-1];
.aoc.makeStacks:{.aoc.stacks:stackNs!`$''trim flip @[;1]each' 4 cut' .input.f[til -1+.aoc.fileSplit]};

.aoc.move:{[fn;c;f;t] 
    c:c&count .aoc.stacks[f];
    p:(0;c)_.aoc.stacks[f];
    .aoc.stacks[t]:fn[p[0]], .aoc.stacks[t];
    .aoc.stacks[f]:p[1];
    };

.aoc.main:{[fn]
    .aoc.makeStacks[];
    .[.aoc.move[fn];]each "J"$@[;1 3 5] each " " vs' (.aoc.fileSplit+1) _ .input.f;
    show raze string first each .aoc.stacks[.aoc.stackNs];
    };

.aoc.p1:{.aoc.main[reverse]};
.aoc.p2:{.aoc.main[{x}]};
