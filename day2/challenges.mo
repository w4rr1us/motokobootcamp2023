import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";

actor {

	// 1. Escriba una función average_array que tome una matriz de enteros y devuelva el valor promedio de los elementos de la matriz.
	public func average_array(array: [Int]) : async Int {
		var tot: Int = 0;
		for (x in array.vals()) {
			tot += x;
		};
		return tot / array.size();
	};

	// 2. Recuento de caracteres: Escriba una función que tome una cadena y un carácter, y devuelva el número de ocurrencias de ese carácter en la cadena.
  
	public func count_character(t : Text, c : Text) : async Nat {
		
    var count: Nat = 0;
		for (char in t.chars()) {
			if (Char.toText(char) == c) {
				count += 1;
			};
		};
    
		return count;

	};

	// 3. Escribe una función factorial que tome un número natural n y devuelva el factorial of n.
	public func factorial(n : Nat) : async Nat {
      	if(n == 0){
      		return 1;
		} else {
			var result : Nat = 1;
			let iter = Iter.range(1, n);
			for(i in iter){
				result := result * i;
			};
			return result;
		}
	};


	// 4. Escribe una función número_de_palabras que tome una oración y devuelva el número de palabras en la oración.
	
  public func number_of_words(text : Text) : async Nat {
		var count: Nat = 0;
		if (text.size() > 0) {
			count += 1;
		};
		
    for (nw in text.chars()) {
			if (nw == ' ') {
				count += 1;
			};
		};

		return count;
	};

	// 5. Escriba una función find_duplicates que tome una matriz de números naturales y devuelva una nueva matriz que contenga todos los números duplicados. El orden de los elementos en la matriz devuelta debe ser el mismo que el orden de la primera aparición en la matriz de entrada.

	public func is_on_array(a: [Nat], n: Nat) : async Bool {
		
		var result : [Nat] = [];
		var i : Nat = 0;
		var treated : HashMap.HashMap<Nat, Nat> = HashMap.HashMap<Nat, Nat>(10, Nat.equal, Hash.hash);

		while(i < a.size()) {
			var j : Nat = i;
			while(j > 0) {
				j -= 1;
				if(a[i]==a[j]) {

				var check = treated.get(a[j]);

				switch(check) {

					case(?value) { 
					j := 0;
					};

					case(_) { 
					result := Array.append<Nat>(result, [a[j]]);
					treated.put(a[j], a[j]);
					j := 0;
					};
				};
				};
			};
			i += 1;
		};
		return result;

	};

	
	// Escriba una función convert_to_binary que tome un número natural n y devuelva una cadena que represente la representación binaria de n.
	public func convert_to_binary(n : Nat) : async Text {
		var result : Text = "";
		var rest : Nat = 0;
		var number : Nat = n;

		loop {
			rest := number % 2;
			number := (number-rest)/2;
			result := Nat.toText(rest) # result;

			if(number < 2) {
				if(number == 1) {
				result := "1" # result;
				};
				return result;
			};
		};
	};
}