actor {
  stable var counter : Nat = 0;

  // Escribe una función multiply que tome dos números naturales y devuelva el producto.
  public func multiply(x : Nat, y : Nat) : async Nat {
    if (x >= 0 and y >= 0) {
      return x * y;
    } else {
      return 0;
    };
  };

  // Escribe una función volume que tome dos números naturales n y devuelva el volumen de un cubo con una longitud de lado n.
  public func volume(n : Nat) : async Nat {
    if (n >= 0) {
      var result : Nat = n * n * n;
      return result;
    } else {
      var result : Nat = 0;
      return result;
    };
  };

  // Escribe una función hours_to_minutes que tome un número de horas n y devuelve el número de minutos.
  public func hours_to_minutes(n : Nat) : async Nat {
    if (n >= 0) {
    var result : Nat = n * 60;
    result;
    } else {
        return 0;
    }
  };

  // Escribe dos funciones set_counter y get_counter.
  // set_counter establece el valor del counter a n
  // get_counter devuelve el valor actual del counter.
  public func set_counter(n : Nat) : async () {
    counter := n;
  };
  public query func get_counter() : async Nat {
    return counter;
  };

  // Escribe una función test_divide que tome dos números naturales n y m y devuelva un boolean indicando si n es divisible entre m.

  public query func test_divide(n : Nat, m : Nat) : async Bool {
    if (n % m == 0) {
      return true;
    } else {
      return false;
    };
  };

  public query func is_even(n : Nat) : async Bool {
    if ((n % 2) == 0) {
      return true;
    } else {
      return false;
    };
  };
};
