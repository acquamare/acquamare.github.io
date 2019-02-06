# music

```java
//http://jsfiddle.net/S66zA/
var long = 1;
var tempo = 125;
var lonote = 12;
var hinote = 37;

var map = ['A1','B1', 
'C2', 'D2', 'E2', 'F2', 'G2', 'A2', 'B2', 
'C3', 'D3', 'E3', 'F3', 'G3', 'A3', 'B3', 
'C4', 'D4', 'E4', 'F4', 'G4', 'A4', 'B4', 
'C5', 'D5','E5', 'F5', 'G5', 'A5', 'B5', 
'C6', 'D6', 'E6', 'F6', 'G6', 'A6', 'B6', 
'C7', 'D7', 'E7', 'F7', 'G7', 'A7', 'B7', 
'C8', 'D8', 'E8', 'F8', 'G8', 'A8', 'B8', 'C9'];

var key = 23;
var dohs = [2, 9, 16, 23, 30, 37, 44, 51];
var seq = [];

function Random() {
	return Math.floor(Math.random() * 2);
}

function SetKey() {
	if(Random()==0) {
		key++
	}
	else { key-- }
}

function Asc() {
	if (key + 2 <= hinote ) {
		seq.push(key)
		key++
		seq.push(key)
		key++
		seq.push(key)
		SetKey()
	}
}

function Desc() {
	if (key - 2 >= lonote) {
		seq.push(key)
		key--
		seq.push(key)
		key--
		seq.push(key)
		SetKey()
	}
}

function Run(callback) {
	if (seq.length == 0) {
		Asc()
	}
	var n = 0;
	while (n < long) {
	if(Random()==0) {
		Asc()
		if (dohs.includes(key)) {
			seq.push(key)
			n++
		} 
	}
	else {
		Desc()
		if (dohs.includes(key)) {
			seq.push(key)
			n++
		} 
	 }
	}
	callback();
}

function nyan() {
  var bpm = tempo;
  var play = beeplay({bpm: bpm});
  for (var note of seq) {
    play.play(map[note], 1/3);
  }
}

Run(nyan)
```