
    /// A simple struct that stores a message.
    public struct Message has key, store {
        id: object::UID,
        text: String,
    }

    /// Create a Message and transfer it to the caller.
    public entry fun create_message(message: String, ctx: &mut TxContext) {
        let msg = Message {
            id: object::new(ctx),
            text: message,
        };
        transfer::transfer(msg, tx_context::sender(ctx));
    }
}
