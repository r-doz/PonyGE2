data ans1 = [1, 1, 1];
data ans2 = [0, 1];

bias1 = uniform([0,1], $cmp);
bias2 = uniform([0,1], $cmp);

for i in range(3) {
    if uniform([0,1], $cmp) - bias1 < 0 {
        ansb1 = 1;
    } else {
        ansb1 = 0;
    } end if;
    
    observe(ansb1 == ans1[i]);
    
}end for;

for i in range(2) { 

    if uniform([0,1], $cmp) - bias2 < 0 {
        ansb2 = 1;
    } else {
        ansb2 = 0;
    } end if;

    observe(ansb2 == ans2[i]);
    
} end for;
