function outer() {
  var outerVal = 10;
  console.log(`outer function created outerVal: ${outerVal}`);
  return () => {
	  outerVal++;
    console.log(`closure updated outerVal to: ${outerVal}`);
  }
}

inner = outer();
inner();
inner();
inner();
