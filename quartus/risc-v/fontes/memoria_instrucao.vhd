library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity memoria_instrucao is
    port (
        i_ADDR     :in std_logic_vector(31 downto 0);
        o_INST :out std_logic_vector(31 downto 0) 
    );
end entity memoria_instrucao;

architecture arch_memoria_instrucao of memoria_instrucao is
    
    type ROM_ARRAY is array (0 to 65535) of std_logic_vector(7 downto 0);      --declaring size of memory. 128 elements of 32 bits
    constant ROM : ROM_ARRAY := (
        -----------START LABEL:
        "00000000","10100000","00000010","10010011", -- addi t0, zero, 10
        "00000000","01100000","00000011","00010011", -- addi t1, zero, 6
        "00000000","01100010","10000100","00110011", -- add s0, t0, t1
        "01000000","01100010","10000100","10110011", -- sub s1, t0, t1
        others => X"00"
    );
begin
    o_INST <= ROM(conv_integer(i_ADDR)) & ROM(conv_integer(i_ADDR + 1)) &
                   ROM(conv_integer(i_ADDR + 2)) & ROM(conv_integer(i_ADDR + 3)); 
    --instruction <= ROM(conv_integer(Address + 3)) & ROM(conv_integer(Address + 2))
      --           & ROM(conv_integer(Address + 1)) & ROM(conv_integer(Address));
 

end architecture arch_memoria_instrucao;


-- int n, first = 0, second = 1, next, c;
 
--   printf("Enter the number of terms\n");
--   scanf("%d", &n);
 
--   printf("First %d terms of Fibonacci series are:\n", n);
 
--   for (c = 0; c < n; c++)
--   {
--     if (c < 2)
--       next = c;
--     else
--     {
--       next = first + second;
--       first = second;
--       second = next;
--     }
--     printf("%d\n", next);
--   }
 
--   return 0;
-- }

--int main()
--{
    --int n, i;
    --unsigned long long factorial = 1;

    --printf("Enter an integer: ");
    --scanf("%d",&n);
    --// show error if the user enters a negative integer
    --if (n < 0)
     --   printf("Error! Factorial of a negative number doesn't exist.");

   -- else
   -- {
        --for(i=1; i<=n; ++i)
        --{
     --       factorial *= i;              // factorial = factorial*i;
       -- }
  ---      printf("Factorial of %d = %llu", n, factorial);
    --}
--
  --  return 0;
--}