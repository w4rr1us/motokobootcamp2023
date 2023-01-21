1) ¿Se guarda la memoria del montón al actualizar un Canister? ¿Cuánta memoria de almacenamiento dinámico tiene un Canister?

    The maximum heap memory is 4GB.

2) ¿Cuántas Accounts puede poseer un Principal único?

    Almost a unlimited number of accounts can be created by a single Principal.

¿Podemos actualizar de forma segura un Canister de la interfaz A a la interfaz B?
Interfaz A

    
    actor {
        public func greet(surname : Text, firstname : Text) : async Text {
            return "Hello" # firstname # surname # " !";
        };
        }

        Interface B

        actor {
        public func greet(firstname : Text) : async Text {
            return "Hello" # firstname # " !";
        };
    }

    Answer: Yes, because the are not stored variables and the return type is the same.
    