import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(path: 'assets/locales',
  supportedLocales: [Locale('hi', 'IN'), Locale('en', 'IN')],
  fallbackLocale: Locale('hi', 'IN'),
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localization Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: TranslationDemo(),
    );
  }
}

class TranslationDemo extends StatefulWidget {
  const TranslationDemo({super.key});

  @override
  State<TranslationDemo> createState() => _TranslationDemoState();
}

class _TranslationDemoState extends State<TranslationDemo> {
  String dropdownValue = 'English - IN';
  String icon = "uk.png";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('title_bar'.tr()),
      ),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 400.0,
        
            child:SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                     Text('Favorite_appbar'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Fav_body_withoutlogin'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('login_button'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('No_Favorites'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Help_header'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('favourite_tab'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        
                         Text('notification_tab'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Contact_and_payment'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Contact_details'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Payment_option'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Amount_payble'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Continue_button'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Payment_mode1'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Payment_mode2'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Payment_mode3'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Cooming_soon'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('login_with_phn'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('empty_phn'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('must_10digit'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('phone_num'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('send_otp'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('resend'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('otp_required'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('must_6digit'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('enter_otp'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('stay_tuned'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('ok'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('lower'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('available'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('Selected'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('seat_layout_notAvailable'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('seats'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('total_Price'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('book'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('boarding_destination'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('reserved'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('booked'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('reserved_booked'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('ticket'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('ticket_booked'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('seat_no'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('boarding'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('drop'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('total_fare'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('print'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('share'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('done'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('email_id'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('ph_no'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('seat'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('name'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('age'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('gender'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('textspn1'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('textspn2'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('textspn3'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('textspn4'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('offline'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('online'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('splash_header'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('splash_textspn1'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('splash_textspn2'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('splash_textspn3'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('close'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('stops'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('call'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('track'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('track_unavailable'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('track_live_location'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('no_data'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('source'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('provide_source'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('destination'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('select_destination'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('no_bus'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('bus_near_you'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('showing'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('rides'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('find_rides'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('search'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('select_bookingdate'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('enter_validdate'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('enter_validrange'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('select_whereto_go'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('select_startingpoint'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('no_route'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('route_removed_fromfavorit'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('route_added_tofavorite'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('route_already_available'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('something_wrong'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('login_toadd_route_fav'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('unfavorite'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('stop_removed_fromfav'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('stop_added_tofav'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('stop_already_available'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('login_toadd_stop_fav'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('bus_removed_fromfav'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('bus_added_tofav'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('bus_already_available'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('login_toadd_bus_fav'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('home_tab'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('busses_tab'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('find_tab'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('routes_tab'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('stops_tab'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('about_us'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('note'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('drawer_spantext1'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('drawer_spantext2'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('drawer_spantext3'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('aboutus_spantext1'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('aboutus_spantext2'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  
                
                        Text('aboutus_spantext3'.tr(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                         
                ],
              ),
            ),
           
           
          ),
      
              
                   
        
          Container(
            margin: EdgeInsets.only(top: 50),
            width: width,
            alignment: Alignment.center,
            child: Container(
              height: 40,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.black, width: .9),
              ),
              child: Container(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      DropdownButton<String>(
                        icon: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Image(
                            image: AssetImage("assets/images/icons/" + icon),
                          ),
                          height: 30,
                          width: 30,
                        ),
                        iconSize: 18,
                        elevation: 16,
                        value: dropdownValue,
                        style: TextStyle(color: Colors.black),
                        underline: Container(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          color: Colors.transparent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            if (newValue == 'English - IN') {
                              this.setState(() {
                                dropdownValue = 'English - IN';
                                icon = "uk.png";
                                context.setLocale(Locale('en', 'IN'));
                              });
                            } else if (newValue == 'Hindi - IN') {
                              this.setState(() {
                                dropdownValue = 'Hindi - IN';
                                icon = "es.png";
                                context.setLocale(Locale('hi', 'IN')) ;
                              });
                            }
                          });
                        },
                        items: <String>['English - IN', 'Hindi - IN']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 3),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 18,
                        ),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}