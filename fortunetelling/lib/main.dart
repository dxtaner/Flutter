import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

int yanitIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et',
    'MOTİVASYON: Kendi gücünüzü ve yeteneklerinizi keşfetmek için cesaretli adımlar atın',
    'MOTİVASYON: Hedeflerinize ulaşmak için sabırlı olun ve düzenli bir şekilde ilerleyin',
    'MOTİVASYON: Kendinizi olumlu düşüncelerle motive edin ve kendinize güvenin',
    'MOTİVASYON: Her gün küçük adımlarla başlayarak büyük başarılara ilerleyin',
    'MOTİVASYON: İçsel motivasyonunuzu canlı tutmak için ilgi duyduğunuz konularla ilgilenin',
    'SAĞLIK: Düzenli egzersiz yaparak fiziksel sağlığınıza özen gösterin',
    'SAĞLIK: Dengeli bir beslenme programı uygulayarak sağlıklı bir yaşam sürdürün',
    'SAĞLIK: Stres yönetimi tekniklerini öğrenerek zihinsel sağlığınızı koruyun',
    'SAĞLIK: Yeterli uyku alarak dinlenmeye özen gösterin',
    'SAĞLIK: Düzenli tıbbi kontrolleri aksatmadan sağlık durumunuzu takip edin',
    'KARİYER: Kariyer hedeflerinizi belirleyin ve buna yönelik adımlar atın',
    'KARİYER: Yeni beceriler öğrenerek kendinizi geliştirin ve işinizde ilerleyin',
    'KARİYER: İş yerinde takım çalışmasına önem verin ve iletişim becerilerinizi geliştirin',
    'KARİYER: İşinizde tutkulu olun ve kendinizi sürekli olarak yenilemeye açık tutun',
    'KARİYER: Kariyerinizle ilgili kaynaklardan yararlanarak kendinizi geliştirin'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('GÜNÜN FALI'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 600,
                margin: const EdgeInsets.only(bottom: 30, top: 30),
                child: Image.asset('images/fal.jpeg')),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(Icons.favorite, color: Colors.red[600]),
                title: Text(
                  'Aşk Yaşamı',
                  style: TextStyle(
                    color: Colors.red[450],
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.money_off,
                  color: Colors.green[600],
                ),
                title: Text(
                  'Para Yaşamı',
                  style: TextStyle(
                    color: Colors.green[450],
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 6;
                  });
                },
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.explore,
                  color: Colors.blue[600],
                ),
                title: Text(
                  'Tavsiyeler',
                  style: TextStyle(
                    color: Colors.blue[450],
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 11;
                  });
                },
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(Icons.mode, color: Colors.red[600]),
                title: Text(
                  'Motivasyon Durumu',
                  style: TextStyle(
                    color: Colors.red[600],
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 16;
                  });
                },
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading:
                    Icon(Icons.health_and_safety, color: Colors.green[600]),
                title: Text(
                  'Sağlık Durumu',
                  style: TextStyle(
                    color: Colors.green[600],
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 21;
                  });
                },
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(Icons.work, color: Colors.blue[600]),
                title: Text(
                  'Kariyer Durumu',
                  style: TextStyle(
                    color: Colors.blue[600],
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 26;
                  });
                },
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 250,
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    child: Text(yanitlar[yanitIndex],
                        style: TextStyle(
                            fontSize: 22, color: Colors.purple.shade900),
                        textAlign: TextAlign.center))),
          ],
        ),
      ),
    );
  }
}
