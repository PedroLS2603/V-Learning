struct Polegada {
	mut: unidade f32
}

// https://www.metric-conversions.org/pt/comprimento/centimetros-em-polegadas.htm
fn (mut p Polegada) converte(cm f32) string {
	p.unidade = cm * 0.39370
	return '${p.unidade}inA'
}

struct Jarda { 
	mut: unidade f32
}

// https://www.metric-conversions.org/pt/comprimento/centimetros-em-jardas.htm
fn (mut j Jarda) converte(cm f32) string {
	j.unidade = cm * 0.010936
	return '${j.unidade}yd'
}


interface ConversorCm {
	mut: unidade f32
	converte(cm f32) string
}


fn main() {
	cm := f32(1.5)

	mut cv_jarda := Jarda{}
	mut cv_polegada := Polegada{}

	mut array_conversor:= []ConversorCm{}

	array_conversor << cv_jarda
	array_conversor << cv_polegada

	for mut conversor in array_conversor {
		println('${cm}cm -> ${conversor.converte(cm)}')
	}
}