fn main() {
	lista := [1,2,3,4,5,6,7,8,9,10]

	mut soma:=0

	for num in lista {
		println('${soma} + ${num} = ${soma + num}')
		soma += num
	}	 
}