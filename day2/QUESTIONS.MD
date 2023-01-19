1) ¿Quién controla el contenedor del libro mayor?

    answer:  NNS (The Network Nervous System) controls the recipient of the ledger.

2) ¿Cuál es la subred del Canister con la identificación: mwrha-maaaa-aaaab-qabqq-cai? ¿Cuántos nodos están ejecutando esta subred?
        
    answer:  The subnet of this container is: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe and it has 16 nodes running according to the network status panel IC.

3) Tengo una neurona con 10 ICP bloqueados con un retraso de disolución de 4 años: mi neurona ha estado bloqueada durante 2 años. ¿Cuál es mi poder de voto esperado?

    answer:     1) Principally, by its stake. 1 ICP = the power of 1 vote.
                
                2) Next, by its lock up duration, or dissolve delay. 6 months grants a 1.06x voting power bonus, and 8 years grants 2x. All other durations scale linearly between.
                
                3) Lastly, by its age, or length of time spent locked up without dissolving. 4 years grants a 1.25x bonus, multiplicative with any other bonuses. All other durations between 0 seconds and 4 years scale linearly between.

                So base on this our equation shall be: "10 * 1.498 * 1.125 = 16,8525"

                So your voting power is 16,8525

4) ¿Qué está mal con el siguiente código?

        actor {
            let n : Nat = 50;
            let t : Text = "Hello";

            public func convert_to_text(m : Nat) : async Text {
                Nat.toText(m);
            };        
        }
    
    answer:  The toText() function is being used but it was not declared for its use, import Nat "mo:base/Nat" would be missing;

5) ¿Qué está mal con el siguiente código?

    actor {
        var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

        public func show_languages(language : Text) : async [var Text] {
            return (languages);
        };
    
    }

    answer: a public function should not return a mutable array so we have to change the languages array to inmutable the languages array before returning it and remove the var keyword from the return type.

6) ¿Qué está mal con el siguiente código?

    actor {
        var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

        public func add_language(new_language: Text) : async [Text] {
            languages := Array.append<Text>(languages, [new_language]);
            return (languages);
        };    
    }

    answer: we need to import the array library, import Array "mo:base/Array", to be used in the function, also the append function is deprecated so we use a Buffer instead an Array for that purpose.