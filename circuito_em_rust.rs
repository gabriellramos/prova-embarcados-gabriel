fn main() {
    //testando na porta AND 
    println!("!({} and {}) = {}\n",1,0,processamento(1,0,4));
   
}

fn processamento(a:i32,b:i32,op: i32) -> i32{
  
    if op == 1{//PORTA NOT
        !(!a)
    }else if op == 2{ //PORTA NAND 
        !(!(a&b))
    }else if op == 3{//PORTA NOR
        !(!(a|b))
    }else if op == 4{//PORTA AND
        !(a&b)+2
    }else if op == 5{//PORTA OR
        !(a|b)+2
    }else{
        -1
    }
}