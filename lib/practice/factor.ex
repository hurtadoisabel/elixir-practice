 defmodule Practice.Factor do

  def factor(number) do
	recursive(number,2,[])
  end
  
  def recursive(number, i, acc) do
	cond do
	   number == 1 ->	
		acc ++ [1]
	   div(number, i) == 1 ->
		acc ++ [number]
	   number == i ->
		acc
	   rem(number, i) == 0 ->
		recursive(div(number, i), i, acc ++ [i])
	   rem(number, i) != 0 ->
		recursive(number, i+1, acc)
	end
   end

   
 end 



