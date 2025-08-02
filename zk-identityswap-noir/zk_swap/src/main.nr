fn main(
    wallet_hash_1: Field,
    wallet_hash_2: Field,
    secret: Field
) -> pub Field {
    // Simple validation: two wallets + same secret identity
    let expected_1 = wallet_hash_1 + secret;
    let expected_2 = wallet_hash_2 + secret;

    expected_1 * expected_2
}
