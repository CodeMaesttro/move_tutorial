module my_first_package::hello {
    use sui::object;
    use sui::transfer;
    use sui::tx_context::TxContext;
    use std::string::String;

    /// A simple struct that stores a message.

