use std::env;
use std::fs;

fn main() {
    let args: Vec<String> = env::args().collect();
    let file_path = &args[1];
    println!("Reading file {}", file_path);

    let contents = fs::read_to_string(file_path).expect("Could not read file!");

    let mut counter = 1;
    let mut formated_content = String::new();
    for line in contents.trim().lines() {
        for character in line.chars() {
            if counter == 1 {
                formated_content.push_str(&format!("\"{}", character));
            } else if counter % 8 == 0 && counter != 32 {
                formated_content.push_str(&format!("{}\", \"", character));
            } else if counter % 8 == 0 && counter == 32 {
                formated_content.push_str(&format!("{}\",", character));
            } else {
                formated_content.push_str(&format!("{}", character));
            }
            counter += 1;
        }
        formated_content.push_str("\n");
        counter = 1;
    }

    let result = fs::write("./formated_riscv_binary.txt", formated_content);
    match result {
        Ok(()) => println!("Successfuly formated binary file to ./formated_riscv_binary.txt"),
        Err(err) => println!("Error: could not write to file, {}", err),
    }
}
