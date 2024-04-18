/*
/// Module: hello_move
module hello_move::hello_move {

}
*/
module hello_move::hello_2H_K {//My ID is 2H-K but the hyphen is an illegal character and it gives an error, so I use _ instead

    use std::ascii::{String, string};
    use sui::object::{Self,UID};
    use sui::transfer::transfer;
    use sui::tx_context::{TxContext, sender};

    public struct Hello_2H_K has key{
        id:UID,
        say: String
    }

    fun init(ctx: &mut TxContext) {
        let hello_move = Hello_2H_K {//My ID is 2H-K but the hyphen is an illegal character and it gives an error, so I use _ instead

            id:object::new(ctx),
            say: string(b"hello 2H-K"),
        };
        transfer(hello_move, sender(ctx));
    }
}
