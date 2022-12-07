.input.f:read0 `:2/input.txt;
.aoc.outcomes:("B X";"C Y";"A Z";"A X";"B Y";"C Z";"C X";"A Y";"B Z");
.aoc.score:{1+.aoc.outcomes?x};
.aoc.p1:{show sum .aoc.score .input.f};

.aoc.p2outcomes:("B X";"C X";"A X";"A Y";"B Y";"C Y";"C Z";"A Z";"B Z");
.aoc.p2score:{1+.aoc.p2outcomes?x};
.aoc.p2:{show sum .aoc.p2score .input.f};
