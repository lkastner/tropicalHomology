my $k3 = load("k3.poly");
my $f0 = $k3->fcosheaf(0);
my $f1 = $k3->fcosheaf(1);
my $f2 = $k3->fcosheaf(2);
my $us0 = $k3->usual_chain_complex($f0);
my $us1 = $k3->usual_chain_complex($f1);
my $us2 = $k3->usual_chain_complex($f2);
my $bm0 = $k3->borel_moore_complex($f0);
my $bm1 = $k3->borel_moore_complex($f1);
my $bm2 = $k3->borel_moore_complex($f2);
my @result1 = ();
push @result1, $us0->BETTI_NUMBERS;
push @result1, $us1->BETTI_NUMBERS;
push @result1, $us2->BETTI_NUMBERS;
my @result2 = ();
push @result2, $bm0->BETTI_NUMBERS;
push @result2, $bm1->BETTI_NUMBERS;
push @result2, $bm2->BETTI_NUMBERS;
my $computed1 = new Matrix(@result1);
my $computed2 = new Matrix(@result2);
my $desired1 = new Matrix([1,0,1],[3,31,0],[34,0,0]);
my $desired2 = new Matrix([0,0,34],[0,31,3],[1,0,1]);
compare_values("k3usual",$desired1, $computed1);
compare_values("k3bm",$desired2, $computed2);
