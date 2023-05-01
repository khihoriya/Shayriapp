import 'package:flutter/material.dart';
import 'package:sayari/third_page.dart';

class SecondPage extends StatefulWidget {

  List categary;
  int index;

  SecondPage(this.categary,this.index);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  List temp = [];


  // 1
  List WishesShayari = [
    '''Life is Very Short So Enjoy Every Moment Don’t Lose Your Confidence Go Always Ahead.. Happy Birthday!''', //1

    '''Wishing You Tons Of Happiness and joy on your special day. Happy Birthday!''', //2

    '''Happy Birthday to the Most  amazing man ever. Happy Birthday!''', //3

    '''May this day be the Happiest day for you. Happy Birthday!''', //4

    '''Luck is yours, wish is mine may your future always shine. Happy Birthday!''',

    '''May you be gifted with life’s biggest joys and never-ending bliss. After all, you yourself are a gift to earth, so you deserve the best. Happy birthday''',

    '''"Grateful for your true friendship. Hope your birthday is amazing as you are my best friend" Happy birthday''',

    '''Count not the candles…see the lights they give. Count not the years, but the life you live. Wishing you a wonderful time ahead Happy birthday''',

    '''Blow your candles,Make a wish, And I will give you Sweet kiss''',

    '''You are very special and you deserve the best, I wish you a wonderful life filled with love and happiness''',

    '''Wish a fabulous birthday to my cutest baby''',

  ];
  // 2
  List BestFriendShayari = [
    '''Call him friend,Can he forget you As I was by your side, I am still in love.''', //1

    '''Friend means No Thanks No Sorry Friend means Fun Is Very Very Friend means I’m here Don’t Worry ''', //2

    '''There is a mind inside the chest. You are in the mind. Become a friend in your heart, want to stay.''', //3

    '''Friendship is Onetime,  But true friendship is lostSurvive Lifetime''', //4

    '''The friend who shares the good days .. And left in misery, He is your worst enemy.''' //5

    '''Friends are like stars They come and go,But the ones that stay Are the ones that glow''',

    '''Fake friends are like shadows. They follow you in the sun, but leave you in the dark''',

    '''Best friends are like diamonds, precious and rare. Fake friends are like leaves, found everywhere''',

    '''Only those who care about you can hear you when you're quiet.''',

    '''Fake friends believe in rumors,Real friends believe in you''',

    '''Love is possible After Friendship, but friendship Is not possible After Love''',
  ];
  // 3
  List FunnyShayari = [
    '''Gadha jo khaye wo Ghas ho tum, Buddhe ka Chyawanprash ho tum,Idiot stupid bakwas ho tum, Par jo bhi ho yar, Dost Jhakaas ho tum''', //1

    '''Manzil kay hai, rasta kya hai,hausla hai to fasla kya hai, vo saja dekar door jaa baithe, kis se puchhun ki meri khata kya hai''',//2

    '''Teacher to Electronis Student:  “Naade” Ko English Mein Kya Kehte Hain?''',//3

    '''Woh Bewafa Hai To Kya Hua  Mat Bura Kaho Usko; Tum Mujhsey Set Ho Jaao  Daffaa Karo Usko''',//4

    '''Ramchandra keh gaye  siya se aisa kalyug aayega  Ek dost ek taraf se SMS karega  doosra apna paisa bachayega'''//5

    '''Humne bhi kabhi pyar kiya tha,thoda nai besumar kiya tha,dil tut kar reh gaya,jab usne kaha,aree Maine to Majak kiya tha.''',

    '''Chandni raat sahil ko diwana bana deti hai… shamma parwane ko jala deti hai.. Ishaq aisi chiiz hai… jo achcho achcho ko roola deti hai…! ''',

    '''Manzil kay hai, rasta kya hai, hausla hai to fasla kya hai, vo saja dekar door jaa baithe, kis se puchhun ki meri khata kya hai ''',

    ''' Aahat si koi aaye to lagta hai ki tum ho Saya sa koi lehraye to lagta hai ki tum ho Ab tumhi batao tum kya kisi bhoot se kam ho? ''',

    '''Hai Tu Agar Mera DilbarHai Tu Agar Mera DilbarTo Aaj Ke Lunch Ka Bill Tu Bha.''',

    '''Woh Bewafa Hai To Kya Hua Mat Bura Kaho Usko; Tum Mujhsey Set Ho Jaao Daffaa Karo Usko''',
  ];
  // 4
  List GodShayari = [
    '''God is present everywhere at all times, just need to be found.''',//1

    '''Not one of us  who is unimportant  to God.''',//2

    '''God loves each one of us   as if we are the only one for him.''',//3

    '''Wherever you are,  God will meet you,  to bring you to where he wants you to reach.''',//4

    '''Our life is good becauseGod is great'''//5

    '''Achievements are accomplished through difficulties''',

    '''While praying we should pray not sing''',

    '''He died for me. I live for Him.''',

    '''Jesus is my homeboy.''',

    '''God, I can’t say it in words…can you please just listen through my heart.''',

    '''Temple, Church, Mosque, Gurudwara are the different addresses of the same resident.''',

    '''When you are spiritually uplifted, you can face the difficulties of life smilingly.''',
  ];
  // 5
  List MotivationalShayari = [
    '''Success is walking from failure to failure with no loss enthusiasm.''',//1

    '''Trust because you are  willing to accept the risk, not because it’s safe or certain.''',//2

    '''The distance between insanity and genius is measured only by success''',//3

    '''The way get started is to quit talking and begin doing.''',//4

    '''If you want to achieve greatness stop asking for permission.''',//5
  ];
  // 6
  List LifeShayari = [
    '''Your future always depends On what You have done Today!''',//1

    '''The weak People can never forgive.Forgiveness is the symptom of strong People!''',//2

    ''' Your Best Teacher is Your Last Mistake!''',//3

    '''I will make India an amazing country, That all Americans will fall in line to get the Indian Visa!''',//4

    '''You should not die  for the Country, You should Live for  your Country!'''//5
  ];
  // 7
  List LoveShayari = [
    '''na koi kisi se door hota ha na koi kisi ke krib hota haiwo khud he chal ke aata haijo jiska nasib hota hai''',//1

    '''Kabhi udaas ho jayo to btana mujhe fir se apna dil  denge tumhe khelne k liye''',//2

    '''Mile to hazaron log the Zindagi me,Par wo sabse alag tha jo  kismat me nahi tha...''',//3

    '''Soch milni chahiye dil toh apne aap hi mil jaate hai.!''',//4

    '''I don t have blue eyes but I sure can hypnotise'''//5
  ];

  //8
  List HoliShayari = [
    '''“Forgive your haters and ill-wishers and remember those who are near & dear to you with splashing colors. Happy Holi”''',
    '''Hey dear, Holi is Here’Pinch of Red and a pinch of green;Joyful colors all are seen’With love and with happiness;''',
    '''I always feel happy whenever Holi comes because Holi gives mewing to fly in the air with all colors of the festival. ''',
    '''Make merry with colors on Holi and the rest of the days with the colors of love. Happy Holi''',
    '''Holi is an apt time to celebrate the colors of our beautiful relationship. Happy Holi'''
  ];

  List PoliticalShayari = [
    '''Tufano se ankh milao, sailaabon par waar karo phoolon ki dukaane kholo, khushbu ka vyapaar karoishq khata hai to yeh khata ek baar nahin sau bar karo''',
    '''In business, as in politics, the public is ever so tolerant of those who slime.''',
    '''Extremes to the right and to the left of any political dispute are always wrong.''',
    '''When everyone is discussing drugs It is a fact that Punjab is facing the problem''',
    '''Nobody is sure of his life, property and health when the parliament deliberates'''
  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      if (widget.index == 0) {
        temp = WishesShayari;
      } else if (widget.index == 1) {
        temp = BestFriendShayari;
      }
      else if(widget.index == 2){
        temp = FunnyShayari;
      }
      else if(widget.index == 3){
        temp = GodShayari;
      }
      else if(widget.index == 4){
        temp = MotivationalShayari;
      }
      else if(widget.index == 5){
        temp = LifeShayari;
      }
      else if(widget.index == 6){
        temp = LoveShayari;
      }else if(widget.index == 7){
        temp = HoliShayari;
      }else if(widget.index == 8){
       temp =  PoliticalShayari;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("${widget.categary[widget.index]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
          itemCount: temp.length,
          itemBuilder: (context,index) {
            return Container(
              margin: EdgeInsets.fromLTRB(11, 9, 11, 0),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2,color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThirdPage(temp, index);
                  }));
                },
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                title: Text("${temp[index]}",style: TextStyle(fontFamily: 'Oswald',fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueGrey),maxLines: 1,),
              ),
            );
          }
      ),
    );
  }
}
