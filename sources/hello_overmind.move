// hello_overmind puzzle
// ------------------------
// Objective: You've intercepted an encoded message from the Overmind. Decode it and send it back.
// ------------------------
// 1.) Find the hidden secret_keys vector located on https://www.overmind.xyz/puzzle/hello-overmind
// Hint.) The prize section is pretty neat, don't you think?
// 2.) Paste the secret_keys under the "secret_keys" variable
// 3.) Loop through the secret keys and add 13. Store each new value in a vector called "decrypted_message".
// 4.) Return the decrypted_message
// 5.) Run "move test" -> if all your tests have passed, you have completed the hello_overmind puzzle.
// 6.) Push your completed code to your GitHub repository and submit that repository to receive your rewards.
module hello_overmind::HelloOvermind {
    use std::vector;

    // Decode the Secret Message
    public entry fun decode_secret_message(): vector<u8> {
        // Find the hidden secret_keys vector located on https://www.overmind.xyz/puzzle/hello-overmind
        // hint.) The prize section is pretty neat, don't you think?
        // Paste the secret_keys under the "secret_keys" variable
        let secret_keys: vector<u8> = vector[ 85,98,101,97,19,92,97,19,84,19,89,84,101,19,89,95,104,97,90,19,86,98,101,97,88,101,19,98,89,19,84,19,87,92,102,103,84,97,103,19,90,84,95,84,107,108,31,19,106,88,19,91,84,105,88,19,88,105,98,95,105,88,87,19,92,97,103,98,19,84,19,102,92,97,90,104,95,84,101,19,92,97,103,88,95,95,92,90,88,97,86,88,33,19,106,88,19,102,91,84,101,88,19,84,19,105,84,102,103,31,19,104,97,92,103,88,87,19,96,92,97,87,31,19,86,98,96,99,98,104,97,87,88,87,19,92,97,103,98,19,84,19,89,98,101,86,88,19,85,88,108,98,97,87,19,84,95,95,19,98,103,91,88,101,19,89,98,101,96,102,19,98,89,19,92,97,103,88,95,95,88,86,103,33,19,103,91,88,108,19,86,84,95,95,19,104,102,19,103,91,88,19,98,105,88,101,96,92,97,87,33,19,103,91,88,19,98,105,88,101,96,92,97,87,19,92,102,19,90,101,98,106,92,97,90,19,84,86,101,98,102,102,19,103,91,88,19,90,84,95,84,107,92,88,102,19,85,108,19,96,88,101,90,92,97,90,19,106,92,103,91,19,96,92,97,87,102,19,103,91,84,103,19,84,101,88,19,99,101,88,99,84,101,88,87,33,19,84,19,89,88,106,19,98,97,19,103,91,88,19,105,84,97,90,104,84,101,87,19,98,89,19,88,84,101,103,91,88,97,19,84,86,104,96,88,97,19,84,101,88,19,85,88,92,97,90,19,86,84,95,95,88,87,33,19,103,91,92,102,19,96,88,102,102,84,90,88,19,92,102,19,98,104,101,19,86,84,95,95,33,19,88,97,103,88,101,19,103,91,88,19,90,101,88,84,103,88,102,103,19,92,97,103,88,95,95,92,90,88,97,86,88,19,103,91,88,19,104,97,92,105,88,101,102,88,19,91,84,102,19,88,105,88,101,19,102,88,88,97,33 ];

        // Loop through the secret keys and add 13. Store each new value in a vector called "decrypted_message".
        let decrypted_message: vector<u8> = vector[];

        let i = 0;
        while (i < vector::length(&secret_keys)) {
            let value = vector::borrow_mut(&mut secret_keys, i);
            vector::push_back(&mut decrypted_message, *value + 13);
            i = i + 1;
        };

        // Return the decrypted_message
        decrypted_message
    }
}
