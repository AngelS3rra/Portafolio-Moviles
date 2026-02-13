main(){

  int a = 10;
  double b = 3.1416;
  int? c;
  late int d;
  d = 20;

  // ******************** NUMEROS ********************
  print(a);
  print(b);
  print(c);
  print(d);
  print(a + b);

  // ******************** STRINGS ********************

  String nombre = 'Tony';
  String apellido = 'Stark';
  String apellidoRandom = 'Rogers';
  String? cadenaVacia;
  String nombreCompleto = "$nombre $apellido";
  String multilinea = 
      '''
Hola mundo
   ¿Como estas $nombre $apellido?
   No me quiero ir señor $apellido
   ''';

  print(nombre);
  print(apellido);
  print(apellidoRandom);
  print(cadenaVacia);
  print(nombreCompleto);
  print(multilinea);

  // ******************** BOOLEANOS ********************
  bool isActive = true;
  bool isNotActive = !isActive;
  print(isActive);
  print(isNotActive);


  // ******************** ARRAYS ********************
  
  var general = ['lex luthor', 'red skull', 'Doom', 1, true, 3.1415];
  List<String> villanos = ['lex luthor', 'red skull', 'Doom'];
  villanos[0] = 'Bizarro';
  print(general);
  print(villanos);
  villanos.add('Sinestro');
  villanos.add('Sinestro');
  villanos.add('Sinestro');
  villanos.add('Sinestro');
  print(villanos);


  // ******************** SETS ********************

  var villanosSet = {'lex luthor', 'red skull', 'Doom', 1, true, 3.1415};
  Set<String> villanosSetString = {'lex luthor', 'red skull', 'Doom'};
  villanos[0] = 'Bizarro';
  print(villanosSet);
  print(villanosSetString);
  villanos.add('Sinestro');
  villanos.add('Sinestro');
  villanos.add('Sinestro');
  villanos.add('Sinestro');
  print(villanosSetString);

  var villanosSet2 = villanos.toSet();
  print(villanosSet2.toList());



  // ******************** MAPAS ********************

  var ironman = {
    'nombre': 'Tony Stark',
    'poder': 'inteligencia y el dinero',
    'edad': 40,
  };

  Map<String, dynamic> warMachine = {
    'nombre' : 'Rhodey Rhodes',
    'poder' : 'Tactico y tecnologia',
    'edad' : 42,
  };

  Map<String, dynamic> capitanAmerica = Map();
  //capitanAmerica['nombre'] = 'Steve Rogers';
  capitanAmerica.addAll({
    'poder' : 'Fuerza, agilidad y resistencia',
    'edad' : 102,
  });

  capitanAmerica.addAll(ironman);
  print(ironman);
  print(warMachine);
  print(ironman['nombre']);
  print(warMachine['nombre']);

}