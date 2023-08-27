// https://github.com/vlang/v/blob/master/doc/docs.md#interfaces

struct Cachorro {
	nome string
}

fn (d Cachorro) fala() string {
	return 'au-au'
}

struct Gato {
	nome string
}

fn (c Gato) fala() string {
	return 'miau'
}

interface Animal {
	nome string
	fala() string
}

fn main() {
	cachorro := Cachorro{'Marley'}
	gato := Gato{'Garfield'}

	mut array_animal := []Animal{}

	array_animal << cachorro
	array_animal << gato
	
	for animal in array_animal {
		println('${animal.nome} diz: ${animal.fala()}')
	}
}