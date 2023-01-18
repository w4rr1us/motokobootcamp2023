1) How much is the current memory capacity of a canister?

    Answer: 48GB

2) What is the issue with the following code sample?

    actor {
        let counter : Nat = 0;
        public func increment_counter() : async () {
            counter := counter + 1;
        };
    }
Answer: The counter variable was assigned as static, and cannot be modified as indicated in the function


3) What is the issue with the following code sample?

    actor {
        var message : Text = 0;

        public query func change_message(new_message : Text) : async () {
            message := new_message;
            return;
        };
        
        public query func see_message() : async Text {
            return(message);
        };
    }

Answer: 

    1) The variable has an integer value and not text, it must be declared in double quotes to indicate that it is text
    2) The function change_message is declared as a query, therefore it will not change the value of the message variable.

4) False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

    Answer: false