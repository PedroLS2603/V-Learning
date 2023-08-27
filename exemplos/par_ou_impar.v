fn main() {
	numeros:= [0,1,2,3,4,5,6,7,8,9,10]
	mut par := []int{}
	mut impar := []int{}


	for numero in numeros {
		if numero % 2 == 0 {
			par << numero
		} else {
			impar << numero
		}
	}

	println(par)
	println(impar)

}
