.input.f:read0 `:4/input.txt;

.aoc.d:"J"$"-" vs'' "," vs' .input.f;

.aoc.p1:sum {(all x[0] within x[1]) or (all x[1] within x[0])} each .aoc.d;

.aoc.p2:sum {(any x[0] within x[1]) or (any x[1] within x[0])} each .aoc.d;


