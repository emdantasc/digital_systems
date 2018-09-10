library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitcompmag is
  generic(n: natural :=8);
  port( A_data, B_data: in std_logic_vector(n-1 downto 0);
        out_gt, out_lt, out_eq: out std_logic);
end nbitcompmag;

architecture circuit of nbitcompmag is
  
  signal inter_gt, inter_lt, inter_eq: std_logic_vector(n downto 0);
  
begin
  
  inter_gt(n)<='0';
  inter_eq(n)<='1';
  inter_lt(n)<='0';
  
  
  comp: for i in n-1 downto 0 generate
    inter_gt(i)<=inter_gt(i+1) or (inter_eq(i+1) and (A_data(i) and not B_data(i))); 
    inter_lt(i)<=inter_lt(i+1) or (inter_eq(i+1) and (not A_data(i) and B_data(i)));
    inter_eq(i)<=inter_eq(i+1) and (A_data(i) xnor B_data(i));
  end generate comp;
  
  out_gt<=inter_gt(0);
  out_lt<=inter_lt(0);
  out_eq<=inter_eq(0); 
  
end circuit;