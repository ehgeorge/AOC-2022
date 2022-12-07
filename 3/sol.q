.input.f:read0 `:3/input.txt;

.aoc.p1:{show sum {c:"j"$(count x)%2;d:first (c#x) inter (neg[c]#x);1+(.Q.a,.Q.A)?d} each .input.f};

.aoc.p2:{show sum {1+(.Q.a,.Q.A)?first (inter/)x} each 3 cut .input.f};
