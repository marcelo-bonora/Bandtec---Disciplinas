// A javascript-enhanced crossword puzzle [c] Jesse Weisbeck, MIT/GPL 
(function($) {
	$(function() {
		var puzzleData = [
			 	{
					clue: "Os dados armazenado na _______________ não são perdidos quando desligamos o equipamento, ao contrário da memória ram. A memória de massa não é acessada pelo CPU mas sim por intermédio da memória ram, cache, etc.",
					answer: "memoriademassa",
					position: 0,
					orientation: "across",
					startx: 1,
					starty: 7
				},
			 	{
					clue: "O ________ é um processador que possui quatro núcleos",
					answer: "quadcore",
					position: 0,
					orientation: "dawn",
					startx: 8,
					starty: 4
				},
				{
					clue: "__________ é uma arquitetura de barramento de computador usada para transferir dados entre dispositivos identificados pelo endereço de hardware da memória física (o endereço físico), que é armazenado na forma de números binários para permitir que o barramento de dados acesse o armazenamento de memória.",
					answer: "addressbus",
					position: 0,
					orientation: "down",
					startx: 14,
					starty: 7
				},
				{
					clue: "O  ___,  permite que certos dispositivos de hardware num computador acessem a memória do sistema para leitura e escrita independentemente da CPU.",
					answer: "dma",
					position: 0,
					orientation: "across",
					startx: 1,
					starty: 18
				},
				{
					clue: "O ________ é um processador que possui dois núcleos",
					answer: "dualcore",
					position: 0,
					orientation: "down",	
					startx: 4,
					starty: 2
				},
				{
					clue: "A  ___ é um tipo de memória que permite a leitura e a escrita, utilizada como memória primária em sistemas eletrônicos digitais.",
					answer: "ram",
					position: 0,
					orientation: "down",
					startx: 2,
					starty: 16
				},
				{
					clue: "Os _____________ estão no topo da hierarquia de memória, sendo assim, é um tipo de memória mais rápida e financeiramente mais custosa.",
					answer: "registradores",
					position: 4,
					orientation: "across",
					startx: 2,
					starty: 16
				},
				{
					clue: "A memória _____ oferece um tempo de acesso rápido, embora não tão rápido como a memória volátil e melhor resistência do que discos rígidos. Estas características explicam a popularidade da memória _____ em dispositivos portáteis. ",
					answer: "flash",
					position: 0,
					orientation: "dawn",
					startx: 11,
					starty: 5
				},
				{
					clue: "A ___ é um tipo de memória que permite apenas a leitura, ou seja, as suas informações são gravadas pelo fabricante uma única vez e após isso não podem ser alteradas ou apagadas, somente acessadas. São memórias cujo conteúdo é gravado permanentemente.",
					answer: "rom",
					position: 0,
					orientation: "down",
					startx: 11,
					starty: 15
				},
				{
					clue: ". O papel da ___ pode ser comparado ao papel de um cérebro no funcionamento de um computador. Isto é, realiza operações lógicas, cálculos e processamento de dados.",
					answer: "cpu",
					position: 0,
					orientation: "down",
					startx: 1,
					starty: 12
				},
				{
					clue: ". Uma vez programado, uma ____ pode ser apagada apenas por exposição a uma forte luz ultravioleta",
					answer: "eprom",
					position: 0,
					orientation: "down",
					startx: 2,
					starty: 7
				},
				{
					clue: "Unidade básica de um microprocessador, que é responsável por realizar as operações lógicas e aritméticas!",
					answer: "ula",
					position: 0,
					orientation: "down",
					startx: 9,
					starty: 14
				},
				{
					clue: "Na arquitetura computacional, um ________ é um sistema de comunicação que transfere dados entre componentes dentro de um computador ou entre computadores. Esta expressão abrange todos os componentes e software de hardware relacionados, incluindo protocolos de comunicação. ",
					answer: "databus",
					position: 0,
					orientation: "down",
					startx: 13,
					starty: 1
				},
				{
					clue: "Teve seu início de fabricação em 2009, seu fabricante é a Intel. Possuía uma frequência do processador entre 2660MHz até 3.476MHz, um Soquete LGA 1156, ao logo de seu lançamento, diversos tipos de núcleos eram implementados nos diversos modelos, eram esses Lynnfield, Arrandale e Clarkdale.",
					answer: "i5",
					position: 0,
					orientation: "down",
					startx: 5,
					starty: 16
				},
				{
					clue: "Teve seu início de fabricação em 2008, seu fabricante é a Intel. Possuía uma frequência do processador entre 2660MHz até 4000MHz, uma frequência de barramento entre 2,66MHz até 4,00MHz. Ao longo de seu lançamento, diversos tipos de núcleos eram implementados nos diversos modelos, possuía os 3 do I5 e mais 6 novos.",
					answer: "i7",
					position: 0,
					orientation: "down",
					startx: 6,
					starty: 7
				},
				{
					clue: " __ é o nome de uma linha de controle na eletrônica digital usada para selecionar um (ou um conjunto) de circuitos integrados dentre vários conectados ao mesmo barramento de computador , geralmente utilizando a lógica de três estados .",
					answer: "cs",
					position: 0,
					orientation: "down",
					startx: 6,
					starty: 15
				}
			] 
		$('#puzzle-wrapper').crossword(puzzleData);	
	})
})(jQuery)
