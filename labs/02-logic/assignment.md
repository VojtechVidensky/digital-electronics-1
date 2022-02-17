# Lab 2: Vojtěch Vídenský (230347)

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![K-maps](images/kmap_empty.png)

   Less than:

   ![K-maps](images/kmap_empty.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](images/comparator_min.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   My student ID: **230347**

```vhdl
       p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0100";
        s_a <= "0111";
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

		s_b <= "0010"; s_a <= "0010"; wait for 100 ns;
        s_b <= "0011"; s_a <= "1111"; wait for 100 ns;
        s_b <= "0010"; s_a <= "0001"; wait for 100 ns;
        
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

```

2. Text console screenshot during your simulation, including reports.

   ![image](https://user-images.githubusercontent.com/99399676/154494071-6de5e2c2-4a61-4ccc-b2fc-8d7bd4855cd3.png)


3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/...)
