import 'package:movieme/src/models.dart/item.model.dart';

ItemModel toyStory = ItemModel(
    nome: 'Toy Story',
    classificacao: 'Livre',
    duracao: "1:21h",
    sinopse:
        "O aniversário do garoto Andy está chegando e seus brinquedos ficam nervosos, temendo que ele ganhe novos brinquedos que possam substituí-los. Liderados pelo caubói Woody, o brinquedo predileto de Andy, eles recebem Buzz Lightyear, o boneco de um patrulheiro espacial, que logo passa a receber mais atenção do garoto. Com ciúmes, Woody tenta ensiná-lo uma lição, mas Buzz cai pela janela. É o início da aventura do caubói, que precisa resgatar Buzz para limpar sua barra com os outros brinquedos.",
    genero: 'Animação',
    linkImagem:
        "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/05/36/20127436.jpg");

ItemModel coringa = ItemModel(
    nome: 'Coringa',
    classificacao: 'Maiores de 18',
    duracao: "02:20h",
    sinopse:
        "Isolado, intimidado e desconsiderado pela sociedade, o fracassado comediante Arthur Fleck inicia seu caminho como uma mente criminosa após assassinar três homens em pleno metrô. Sua ação inicia um movimento popular contra a elite de Gotham City, da qual Thomas Wayne é seu maior representante.",
    genero: 'Suspense',
    linkImagem:
        "https://br.web.img3.acsta.net/c_310_420/pictures/19/04/03/18/23/2539612.jpg");

ItemModel senhor = ItemModel(
    nome: 'Senhor dos Anéis',
    classificacao: 'Maiores de 12',
    duracao: "02:58h",
    sinopse:
        "Um jovem hobbit chamado Frodo recebe um anel mágico de seu tio Bilbo, desencadeando uma jornada épica para destruir o anel e impedir o retorno do maligno Senhor das Trevas Sauron.",
    genero: 'Fantasia',
    linkImagem:
        "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/92/91/32/20224832.jpg");

ItemModel vingadores = ItemModel(
    nome: 'Vingadores Ultimato',
    classificacao: 'Maiores de 12',
    duracao: "03:20h",
    sinopse:
        "Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco.",
    genero: 'Aventura',
    linkImagem:
        "https://br.web.img2.acsta.net/c_310_420/pictures/19/04/26/17/30/2428965.jpg");

ItemModel pantera = ItemModel(
    nome: 'Pantera Negra',
    classificacao: 'Maiores de 12',
    duracao: "02:14h",
    sinopse:
        "T'Challa retorna para a isolada e avançada nação africana de Wakanda para assumir o trono como rei após a morte de seu pai. No entanto, ele logo descobre que desafios surgem quando um antigo inimigo reaparece e coloca em perigo o destino de Wakanda e do mundo.",
    genero: 'Aventura',
    linkImagem:
        "https://br.web.img3.acsta.net/c_310_420/pictures/17/12/07/16/09/2291532.jpg");

ItemModel jurassic = ItemModel(
    nome: 'Jurassic Park',
    classificacao: 'Maiores de 12',
    duracao: "02:07h",
    sinopse:
        "Um excêntrico bilionário convida um grupo de cientistas para visitar um parque de dinossauros geneticamente recriados, mas as coisas saem terrivelmente erradas quando os dinossauros escapam de seus confinamentos.",
    genero: 'Aventura',
    linkImagem:
        "https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/05/56/20369174.jpg");

List<ItemModel> items = [
  toyStory,
  coringa,
  senhor,
  vingadores,
  pantera,
  jurassic,
];
