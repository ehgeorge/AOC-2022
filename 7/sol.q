.input.f:read0 `:7/input.txt;

dirChanges:{[f] c!@[;2] each " " vs' f c:where like[;"$ cd*"] f} .input.f;
.aoc.dir:`s#(key dirChanges)!({$[y like enlist "/";enlist y;y like "..";x:-1_x;x:x,enlist y]})\[enlist enlist "/";] value dirChanges;
.aoc.allSizes:([] folder:.aoc.dir[l]; size:"J"$@[;0]each " " vs' .input.f l:where not any .input.f like/: ("$*";"dir*"));
.aoc.sizes:1!([]folder:distinct value .aoc.dir; size:0);
.aoc.join:{
    t:select sum size by folder from .aoc.allSizes;
    .aoc.sizes:.aoc.sizes pj t;
    t:update {-1_x} each folder from 0!t;
    .aoc.allSizes:delete from t where 0=count each folder;
    count .aoc.allSizes};
(1>).aoc.join\;
show select sum size from .aoc.sizes where size<=100000;
show select min size from .aoc.sizes where size>.aoc.sizes[enlist enlist"/"][`size]-40000000;
