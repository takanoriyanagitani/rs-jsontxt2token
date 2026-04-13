use std::io;

use rs_jsontxt2token::stdin2jsonl2tokens2stdout_default;

fn main() -> Result<(), io::Error> {
    stdin2jsonl2tokens2stdout_default()
}
