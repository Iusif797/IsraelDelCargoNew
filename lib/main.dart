// lib/main.dart

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

/// Класс для локализации приложения.
class AppLocalizations {
  final String locale;

  AppLocalizations(this.locale);

  static Map<String, Map<String, String>> _localizedValues = {
    'ru': {
      'menu': 'Меню',
      'howWeWork': 'Как мы работаем',
      'advantages': 'Преимущества',
      'prices': 'Цены',
      'products': 'Товары',
      'aboutUs': 'О компании',
      'settings': 'Настройки',
      'language': 'Язык',
      'cart': 'Корзина',
      'pay': 'Оплатить',
      'emptyCart': 'Ваша корзина пуста.',
      'select': 'Вы выбрали: ',
      'settings_title': 'Настройки',
      'language_switch': 'Изменить язык',
      'language_ru': 'Русский',
      'language_en': 'English',
      'language_he': 'Hebrew',
      'not_supported': 'Данный язык не поддерживается.',
      'about_company':
          'Вас приветствует компания IsraelDelCargo, занимающаяся перевозками грузов из Израиля в Россию и из России в Израиль. Мы предоставляем услуги, обеспечивающие комфорт путем быстрой и надежной доставки.\n\nНаша работа заключается в индивидуальном подходе при работе с каждым клиентом.',
      'contacts': 'Контакты',
      'telegram': 'Телеграмм: @israeldelcargo',
      'whatsapp': 'WhatsApp: +79914992420',
      'email': 'Почта: IsraelDelCargo@mail.ru',
      'address': 'Адрес: г. Москва, улица Олимпийский проспект 22',
      'howWeWork_step1_title': 'Получаем от вас заявку',
      'howWeWork_step1_desc':
          'Наш менеджер связывается с вами и уточняет детали. При необходимости, есть возможность выкупить товар.',
      'howWeWork_step2_title': 'Подготовка к отправке',
      'howWeWork_step2_desc':
          'Рассчитывается стоимость доставки. Цена зависит от габаритов, веса и сроков.',
      'howWeWork_step3_title': 'Мы отправляем посылку',
      'howWeWork_step3_desc': 'Время доставки, ориентировочно 5-7 дней.',
      'howWeWork_step4_title': 'Доставляем до назначенного адреса',
      'howWeWork_step4_desc':
          'Курьер доставит до адреса в любое удобное для вас время!',
      'advantages_title1': 'Низкая цена',
      'advantages_desc1': 'Цены на перевозки ниже рыночных.',
      'advantages_title2': 'Защита и безопасность',
      'advantages_desc2': 'Гарантируем безопасность и сохранность посылок!',
      'advantages_title3': 'Быстрая работа менеджеров',
      'advantages_desc3': 'У наших менеджеров можно уточнить все детали.',
      'advantages_title4': 'Высокая скорость доставки',
      'advantages_desc4':
          'Мы заинтересованы доставить вашу посылку в кратчайшие сроки.',
      'prices_title': 'Цены',
      'price_delivery_documents': 'Доставка документов',
      'price_religious_items': 'Религиозные атрибуты (книги, иудайка)',
      'price_clothing': 'Одежда, обувь, головные уборы (1кг-1ед)',
      'price_kosher_food': 'Кошерное питание',
      'price_duty_free': 'Товары из Duty Free',
      'price_small_packages': 'Маленькие посылки (до 1кг)',
      'settings_page_title': 'Настройки',
      'settings_page_description': 'Выберите язык для приложения:',
      'prices_description':
          'Наши цены конкурентоспособны и прозрачны. Мы предлагаем различные тарифы в зависимости от типа и объема груза, что позволяет каждому клиенту выбрать наиболее подходящий вариант.',
      'products_description':
          'В нашем каталоге представлены разнообразные товары, включая документы, религиозные атрибуты, одежду, обувь, головные уборы, кошерное питание, товары Duty Free и маленькие посылки. Выберите нужный товар и добавьте его в корзину для быстрой и удобной покупки.',
      'advantages_description':
          'Наши преимущества делают нас лучшим выбором для доставки ваших грузов. Мы предлагаем низкие цены, высокую безопасность, быстрых и опытных менеджеров, а также непревзойденную скорость доставки.',
      'delete_confirmation_title': 'Подтверждение удаления',
      'delete_confirmation_content': 'Вы уверены, что хотите удалить этот товар из корзины?',
      'yes': 'Да',
      'no': 'Нет',
      'calculate_delivery': 'Рассчитать доставку',
      'origin_city': 'Город отправления',
      'destination_city': 'Город назначения',
      'select_origin_city': 'Выберите город отправления',
      'select_destination_city': 'Выберите город назначения',
      'calculate': 'Рассчитать',
      'delivery_cost': 'Стоимость доставки: ',
      'moscow': 'Москва',
      'tel_aviv': 'Тель-Авив',
    },
    'en': {
      'menu': 'Menu',
      'howWeWork': 'How We Work',
      'advantages': 'Advantages',
      'prices': 'Prices',
      'products': 'Products',
      'aboutUs': 'About Us',
      'settings': 'Settings',
      'language': 'Language',
      'cart': 'Cart',
      'pay': 'Pay',
      'emptyCart': 'Your cart is empty.',
      'select': 'You selected: ',
      'settings_title': 'Settings',
      'language_switch': 'Change Language',
      'language_ru': 'Russian',
      'language_en': 'English',
      'language_he': 'Hebrew',
      'not_supported': 'This language is not supported.',
      'about_company':
          'Welcome to IsraelDelCargo, a company engaged in cargo transportation from Israel to Russia and from Russia to Israel. We provide services that ensure comfort through fast and reliable delivery.\n\nOur work is based on an individual approach when working with each client.',
      'contacts': 'Contacts',
      'telegram': 'Telegram: @israeldelcargo',
      'whatsapp': 'WhatsApp: +79914992420',
      'email': 'Email: IsraelDelCargo@mail.ru',
      'address': 'Address: Moscow, Olympic Prospect Street 22',
      'howWeWork_step1_title': 'We receive your application',
      'howWeWork_step1_desc':
          'Our manager contacts you to clarify details. If necessary, there is an option to purchase the product.',
      'howWeWork_step2_title': 'Preparation for shipment',
      'howWeWork_step2_desc':
          'The delivery cost is calculated. The price depends on dimensions, weight, and timing.',
      'howWeWork_step3_title': 'We send the package',
      'howWeWork_step3_desc': 'Delivery time is approximately 5-7 days.',
      'howWeWork_step4_title': 'Deliver to the designated address',
      'howWeWork_step4_desc':
          'The courier will deliver to the address at any convenient time for you!',
      'advantages_title1': 'Low price',
      'advantages_desc1': 'Transportation prices are below market rates.',
      'advantages_title2': 'Protection and safety',
      'advantages_desc2': 'We guarantee the safety and security of parcels!',
      'advantages_title3': 'Fast working managers',
      'advantages_desc3': 'You can clarify all details with our managers.',
      'advantages_title4': 'High delivery speed',
      'advantages_desc4':
          'We are committed to delivering your package as quickly as possible.',
      'prices_title': 'Prices',
      'price_delivery_documents': 'Document delivery',
      'price_religious_items': 'Religious items (books, judaica)',
      'price_clothing': 'Clothing, footwear, headwear (1kg-1pcs)',
      'price_kosher_food': 'Kosher food',
      'price_duty_free': 'Duty Free goods',
      'price_small_packages': 'Small packages (up to 1kg)',
      'settings_page_title': 'Settings',
      'settings_page_description': 'Select a language for the app:',
      'prices_description':
          'Our prices are competitive and transparent. We offer various rates depending on the type and volume of cargo, allowing each client to choose the most suitable option.',
      'products_description':
          'Our catalog features a wide range of products, including documents, religious items, clothing, footwear, headwear, kosher food, Duty Free goods, and small packages. Select the desired product and add it to your cart for a quick and convenient purchase.',
      'advantages_description':
          'Our advantages make us the best choice for delivering your cargo. We offer low prices, high security, fast and experienced managers, and unparalleled delivery speed.',
      'delete_confirmation_title': 'Delete Confirmation',
      'delete_confirmation_content': 'Are you sure you want to remove this item from the cart?',
      'yes': 'Yes',
      'no': 'No',
      'calculate_delivery': 'Calculate Delivery',
      'origin_city': 'Origin City',
      'destination_city': 'Destination City',
      'select_origin_city': 'Select Origin City',
      'select_destination_city': 'Select Destination City',
      'calculate': 'Calculate',
      'delivery_cost': 'Delivery Cost: ',
      'moscow': 'Moscow',
      'tel_aviv': 'Tel Aviv',
    },
    'he': {
      'menu': 'תפריט',
      'howWeWork': 'איך אנחנו עובדים',
      'advantages': 'יתרונות',
      'prices': 'מחירים',
      'products': 'מוצרים',
      'aboutUs': 'אודותינו',
      'settings': 'הגדרות',
      'language': 'שפה',
      'cart': 'עגלת קניות',
      'pay': 'לשלם',
      'emptyCart': 'עגלת הקניות שלך ריקה.',
      'select': 'בחרת: ',
      'settings_title': 'הגדרות',
      'language_switch': 'שנה שפה',
      'language_ru': 'רוסית',
      'language_en': 'אנגלית',
      'language_he': 'עברית',
      'not_supported': 'השפה הזאת לא נתמכת.',
      'about_company':
          'ברוכים הבאים ל- IsraelDelCargo, חברה העוסקת בהובלת מטענים מישראל לרוסיה וממכאן. אנו מספקים שירותים המבטיחים נוחות באמצעות משלוח מהיר ואמין.\n\nעבודתנו מבוססת על גישה אישית בעבודה עם כל לקוח.',
      'contacts': 'יצירת קשר',
      'telegram': 'טלגרם: @israeldelcargo',
      'whatsapp': 'וואטסאפ: +79914992420',
      'email': 'דוא"ל: IsraelDelCargo@mail.ru',
      'address': 'כתובת: מוסקבה, שדרת אולימפיאקית 22',
      'howWeWork_step1_title': 'אנו מקבלים את הבקשה שלך',
      'howWeWork_step1_desc':
          'המנהלת שלנו יוצרת איתך קשר כדי להבהיר פרטים. במידת הצורך, יש אפשרות לרכוש את המוצר.',
      'howWeWork_step2_title': 'הכנה למשלוח',
      'howWeWork_step2_desc':
          'מחיר המשלוח מחושב. המחיר תלוי במידות, במשקל ובזמנים.',
      'howWeWork_step3_title': 'אנו שולחים את החבילה',
      'howWeWork_step3_desc': 'זמן המשלוח הוא כ-5-7 ימים.',
      'howWeWork_step4_title': 'אנו משלימים לכתובת הנבחרת',
      'howWeWork_step4_desc':
          'הקבלן יספק לכתובת בכל זמן נוח עבורך!',
      'advantages_title1': 'מחיר נמוך',
      'advantages_desc1': 'מחירי ההובלה נמוכים ממחירי השוק.',
      'advantages_title2': 'הגנה ובטיחות',
      'advantages_desc2': 'אנו מבטיחים את הבטיחות וההגנה של החבילות!',
      'advantages_title3': 'מנהלים מהירים',
      'advantages_desc3': 'ניתן לברר את כל הפרטים עם המנהלים שלנו.',
      'advantages_title4': 'מהירות משלוח גבוהה',
      'advantages_desc4':
          'אנו מחויבים לספק את החבילה שלך בהקדם האפשרי.',
      'prices_title': 'מחירים',
      'price_delivery_documents': 'משלוח מסמכים',
      'price_religious_items': 'פריטים דתיים (ספרים, יודאיקה)',
      'price_clothing': 'ביגוד, נעליים, כובעים (1ק"ג-1יחידה)',
      'price_kosher_food': 'מזון כשר',
      'price_duty_free': 'מוצרים מדוי די פרי',
      'price_small_packages': 'חבילות קטנות (עד 1 ק"ג)',
      'settings_page_title': 'הגדרות',
      'settings_page_description': 'בחר שפה לאפליקציה:',
      'prices_description':
          'המחירים שלנו תחרותיים ושקופים. אנו מציעים תעריפים שונים בהתאם לסוג ולכמות המטען, מה שמאפשר לכל לקוח לבחור את האפשרות המתאימה ביותר.',
      'products_description':
          'הקטלוג שלנו כולל מגוון רחב של מוצרים, כולל מסמכים, פריטים דתיים, ביגוד, נעליים, כובעים, מזון כשר, מוצרים מדוי די פרי וחבילות קטנות. בחר את המוצר הרצוי והוסף אותו לעגלת הקניות שלך לרכישה מהירה ונוחה.',
      'advantages_description':
          'היתרונות שלנו עושים אותנו לבחירה הטובה ביותר עבור משלוח המטענים שלך. אנו מציעים מחירים נמוכים, ביטחון גבוה, מנהלים מהירים ומנוסים, ומהירות משלוח שאין לה תחרות.',
      'delete_confirmation_title': 'אישור מחיקה',
      'delete_confirmation_content': 'האם אתה בטוח שברצונך להסיר את המוצר הזה מהעגלה?',
      'yes': 'כן',
      'no': 'לא',
      'calculate_delivery': 'חשב את המשלוח',
      'origin_city': 'עיר המוצא',
      'destination_city': 'עיר היעד',
      'select_origin_city': 'בחר עיר מוצא',
      'select_destination_city': 'בחר עיר יעד',
      'calculate': 'חשב',
      'delivery_cost': 'עלות משלוח: ',
      'moscow': 'מוסקבה',
      'tel_aviv': 'תל אביב',
    },
  };

  String get(String key) {
    return _localizedValues[locale]?[key] ?? key;
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

/// Состояние для MyApp, включает текущую локаль.
class _MyAppState extends State<MyApp> {
  String _locale = 'ru';

  void _switchLanguage(String newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations(_locale);
    return MaterialApp(
      title: 'IsraelDelCargo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: HomePage(
        localizations: localizations,
        onLocaleChange: _switchLanguage,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// Домашняя страница с боковым меню и функциональностью корзины.
class HomePage extends StatefulWidget {
  final AppLocalizations localizations;
  final Function(String) onLocaleChange;

  HomePage({required this.localizations, required this.onLocaleChange});

  @override
  _HomePageState createState() => _HomePageState();
}

/// Состояние для HomePage.
class _HomePageState extends State<HomePage> {
  DrawerSections currentPage = DrawerSections.products;
  final List<CargoCategory> cartItems = [];
  final GlobalKey cartIconKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Widget container;
    switch (currentPage) {
      case DrawerSections.howWeWork:
        container = HowWeWorkPage(localizations: widget.localizations);
        break;
      case DrawerSections.advantages:
        container = AdvantagesPage(localizations: widget.localizations);
        break;
      case DrawerSections.prices:
        container = PricesPage(localizations: widget.localizations);
        break;
      case DrawerSections.products:
        container = ProductsPage(
          onAddToCart: addToCart,
          localizations: widget.localizations,
        );
        break;
      case DrawerSections.aboutUs:
        container = AboutUsPage(localizations: widget.localizations);
        break;
      case DrawerSections.settings:
        container = SettingsPage(
          localizations: widget.localizations,
          onLocaleChange: widget.onLocaleChange,
        );
        break;
      case DrawerSections.calculateDelivery:
        container =
            CalculateDeliveryPage(localizations: widget.localizations);
        break;
      default:
        container = ProductsPage(
          onAddToCart: addToCart,
          localizations: widget.localizations,
        );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.localizations.get(currentPage == DrawerSections.products
              ? 'products'
              : (currentPage == DrawerSections.calculateDelivery
                  ? 'calculate_delivery'
                  : 'menu')),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Stack(
            children: [
              IconButton(
                key: cartIconKey,
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(
                          cartItems: cartItems,
                          localizations: widget.localizations),
                    ),
                  );
                },
              ),
              Positioned(
                right: 6,
                top: 6,
                child: cartItems.isNotEmpty
                    ? Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: Text(
                          '${cartItems.length}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : SizedBox(),
              ),
            ],
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            // Фоновый градиент
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Распределяем элементы по вертикали
              children: <Widget>[
                // Верхняя часть Drawer с логотипом и "Меню"
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16.0, top: 20.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/images/logos.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 8.0, bottom: 20.0),
                      child: Text(
                        widget.localizations.get('menu'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight:
                              FontWeight.bold, // Увеличиваем жирность шрифта
                        ),
                      ),
                    ),
                  ],
                ),
                // Список меню
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      menuItem(1, widget.localizations.get("howWeWork"),
                          Icons.work, DrawerSections.howWeWork),
                      menuItem(
                          2,
                          widget.localizations.get("advantages"),
                          Icons.check_circle,
                          DrawerSections.advantages),
                      menuItem(
                          3,
                          widget.localizations.get("prices"),
                          Icons.attach_money,
                          DrawerSections.prices),
                      menuItem(
                          4,
                          widget.localizations.get("products"),
                          Icons.shopping_cart,
                          DrawerSections.products),
                      menuItem(5, widget.localizations.get("aboutUs"),
                          Icons.info, DrawerSections.aboutUs),
                      menuItem(6, widget.localizations.get("settings"),
                          Icons.settings, DrawerSections.settings),
                      menuItem(
                          7,
                          widget.localizations.get("calculate_delivery"),
                          Icons.calculate,
                          DrawerSections.calculateDelivery),
                    ],
                  ),
                ),
                // Нижняя часть Drawer с иконками и подписью
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Уменьшаем размер колонки
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Иконка WhatsApp
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.white, // Изменили цвет на белый
                            ),
                            onPressed: () async {
                              final Uri whatsappUri =
                                  Uri.parse("https://wa.me/79914992420");
                              if (await canLaunchUrl(whatsappUri)) {
                                await launchUrl(whatsappUri,
                                    mode: LaunchMode.externalApplication);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(widget.localizations
                                          .get('not_supported'))),
                                );
                              }
                            },
                          ),
                          SizedBox(width: 20),
                          // Иконка Telegram
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.telegram,
                              color: Colors.white, // Изменили цвет на белый
                            ),
                            onPressed: () async {
                              final Uri telegramUri =
                                  Uri.parse("https://t.me/israeldelcargo");
                              if (await canLaunchUrl(telegramUri)) {
                                await launchUrl(telegramUri,
                                    mode: LaunchMode.externalApplication);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(widget.localizations
                                          .get('not_supported'))),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Created by Yosef Mamedov', // Удалили восклицательный знак
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold, // Увеличиваем жирность шрифта
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          // Используем FadeTransition для плавного перехода
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: container,
      ),
    );
  }

  /// Виджет элемента меню с иконкой слева и жирным текстом.
  Widget menuItem(int id, String title, IconData icon, DrawerSections section) {
    return Material(
      color: currentPage == section
          ? Colors.white.withOpacity(0.2)
          : Colors.transparent,
      child: InkWell(
        onTap: () {
          setState(() {
            currentPage = section;
            Navigator.pop(context);
          });
        },
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold, // Увеличиваем жирность шрифта
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Функция добавления товара в корзину с анимацией.
  void addToCart(CargoCategory category, GlobalKey key) async {
    // Получаем позицию и размер иконки товара
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    // Получаем позицию и размер иконки корзины
    final RenderBox? cartRenderBox =
        cartIconKey.currentContext?.findRenderObject() as RenderBox?;
    if (cartRenderBox == null) return;

    final cartPosition = cartRenderBox.localToGlobal(Offset.zero);
    final cartSize = cartRenderBox.size;

    final overlay = Overlay.of(context);
    final entry = OverlayEntry(
      builder: (context) => AnimatedAddToCart(
        startPosition: position,
        startSize: size,
        endPosition: cartPosition,
        endSize: cartSize,
        child: Icon(
          category.icon,
          color: Colors.white, // Изменили цвет на белый для лучшей видимости
          size: 40,
        ),
      ),
    );

    overlay?.insert(entry);

    // После завершения анимации добавляем товар в корзину
    await Future.delayed(Duration(milliseconds: 800));
    entry.remove();
    setState(() {
      cartItems.add(category);
    });
  }
}

enum DrawerSections {
  howWeWork,
  advantages,
  prices,
  products,
  aboutUs,
  settings,
  calculateDelivery, // Новая секция
}

/// Страница корзины.
class CartPage extends StatefulWidget {
  final List<CargoCategory> cartItems;
  final AppLocalizations localizations;

  CartPage({required this.cartItems, required this.localizations});

  @override
  _CartPageState createState() => _CartPageState();
}

/// Состояние для CartPage.
class _CartPageState extends State<CartPage> {
  /// Функция для открытия ссылки оплаты.
  void _launchPaymentURL() async {
    final Uri url =
        Uri.parse('https://www.tbank.ru/rm/rabaev.natan1/qBQMJ15331/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(widget.localizations.get('not_supported'))),
      );
    }
  }

  /// Функция для подтверждения удаления товара.
  Future<void> _confirmDelete(int index) async {
    bool? confirm = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(widget.localizations.get('delete_confirmation_title')),
          content:
              Text(widget.localizations.get('delete_confirmation_content')),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // Не удалять
              },
              child: Text(widget.localizations.get('no')),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // Удалить
              },
              child: Text(widget.localizations.get('yes')),
            ),
          ],
        );
      },
    );

    if (confirm != null && confirm) {
      removeItem(index);
    }
  }

  void removeItem(int index) {
    final removedItem = widget.cartItems[index];
    setState(() {
      widget.cartItems.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              '${widget.localizations.get('select')}${widget.localizations.get(removedItem.name)}')),
    );
  }

  /// Рассчитать общую стоимость корзины
  int get totalCost {
    int sum = 0;
    for (var item in widget.cartItems) {
      sum += item.deliveryCost;
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.localizations.get('cart')),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: widget.cartItems.isEmpty
          ? Center(
              child: Text(
                widget.localizations.get('emptyCart'),
                style: TextStyle(fontSize: 24, color: Colors.white70),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.cartItems.length,
                    itemBuilder: (context, index) {
                      return CartItemCard(
                        category: widget.cartItems[index],
                        onRemove: () => _confirmDelete(index),
                        localizations: widget.localizations,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: _launchPaymentURL,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor:
                          Colors.transparent, // Заменили primary на backgroundColor
                      shadowColor: Colors.transparent, // Убираем тень
                    ).copyWith(
                      elevation: ButtonStyleButton.allOrNull(0.0),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) => Colors.transparent,
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.purpleAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Container(
                        constraints:
                            BoxConstraints(minWidth: 150, minHeight: 50),
                        alignment: Alignment.center,
                        child: Text(
                          widget.localizations.get('pay'),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Отображение общей стоимости
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    '${widget.localizations.get('delivery_cost')}$totalCost ₽',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

/// Виджет для отображения товара в корзине.
class CartItemCard extends StatelessWidget {
  final CargoCategory category;
  final VoidCallback onRemove;
  final AppLocalizations localizations;

  CartItemCard(
      {required this.category,
      required this.onRemove,
      required this.localizations});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          category.icon,
          color: Colors.white,
          size: 40,
        ),
        title: Text(
          localizations.get(category.name),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          category.price,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.redAccent,
            size: 30,
          ),
          onPressed: onRemove,
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    '${localizations.get('select')}${localizations.get(category.name)}')),
          );
        },
      ),
    );
  }
}

/// Виджет для анимации добавления товара в корзину.
class AnimatedAddToCart extends StatefulWidget {
  final Offset startPosition;
  final Size startSize;
  final Offset endPosition;
  final Size endSize;
  final Widget child;

  AnimatedAddToCart({
    required this.startPosition,
    required this.startSize,
    required this.endPosition,
    required this.endSize,
    required this.child,
  });

  @override
  _AnimatedAddToCartState createState() => _AnimatedAddToCartState();
}

class _AnimatedAddToCartState extends State<AnimatedAddToCart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _positionAnimation = Tween<Offset>(
      begin: widget.startPosition,
      end: widget.endPosition,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _sizeAnimation = Tween<double>(
      begin: widget.startSize.width,
      end: widget.endSize.width / 2,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final position = _positionAnimation.value;
        final size = _sizeAnimation.value;
        return Positioned(
          left: position.dx,
          top: position.dy,
          child: Transform.scale(
            scale: size / widget.startSize.width,
            child: Opacity(
              opacity: 1.0 - _controller.value,
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}

/// Страница "Как мы работаем".
class HowWeWorkPage extends StatelessWidget {
  final AppLocalizations localizations;

  HowWeWorkPage({required this.localizations});

  final List<HowWeWorkStep> steps = [
    HowWeWorkStep(
      number: 1,
      title: 'howWeWork_step1_title',
      description: 'howWeWork_step1_desc',
      icon: Icons.assignment,
    ),
    HowWeWorkStep(
      number: 2,
      title: 'howWeWork_step2_title',
      description: 'howWeWork_step2_desc',
      icon: Icons.build,
    ),
    HowWeWorkStep(
      number: 3,
      title: 'howWeWork_step3_title',
      description: 'howWeWork_step3_desc',
      icon: Icons.send,
    ),
    HowWeWorkStep(
      number: 4,
      title: 'howWeWork_step4_title',
      description: 'howWeWork_step4_desc',
      icon: Icons.home,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Фоновый градиент
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey.shade900, Colors.blueGrey.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Контент страницы "Как мы работаем"
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Заголовок страницы
                  Text(
                    localizations.get('howWeWork'),
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Расширенное описание страницы
                  Text(
                    localizations.get('howWeWork_step1_desc'),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  // Список шагов
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: steps.length,
                    itemBuilder: (context, index) {
                      return HowWeWorkCard(
                          step: steps[index],
                          localizations: localizations);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Модель шага "Как мы работаем".
class HowWeWorkStep {
  final int number;
  final String title; // key for localization
  final String description; // key for localization
  final IconData icon;

  HowWeWorkStep({
    required this.number,
    required this.title,
    required this.description,
    required this.icon,
  });
}

/// Виджет карточки шага "Как мы работаем".
class HowWeWorkCard extends StatelessWidget {
  final HowWeWorkStep step;
  final AppLocalizations localizations;

  HowWeWorkCard({required this.step, required this.localizations});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Text(
            '${step.number}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          localizations.get(step.title),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          localizations.get(step.description),
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
        trailing: Icon(
          step.icon,
          color: Colors.blueAccent,
          size: 30,
        ),
      ),
    );
  }
}

/// Страница "Преимущества".
class AdvantagesPage extends StatelessWidget {
  final AppLocalizations localizations;

  AdvantagesPage({required this.localizations});

  final List<AdvantagesItem> advantages = [
    AdvantagesItem(
      title: 'advantages_title1',
      description: 'advantages_desc1',
      icon: Icons.attach_money,
    ),
    AdvantagesItem(
      title: 'advantages_title2',
      description: 'advantages_desc2',
      icon: Icons.security,
    ),
    AdvantagesItem(
      title: 'advantages_title3',
      description: 'advantages_desc3',
      icon: Icons.person_search,
    ),
    AdvantagesItem(
      title: 'advantages_title4',
      description: 'advantages_desc4',
      icon: Icons.speed,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Фоновый градиент
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade900, Colors.teal.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Контент страницы "Преимущества"
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Заголовок страницы
                  Text(
                    localizations.get('advantages'),
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Расширенное описание страницы
                  Text(
                    localizations.get('advantages_description'),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  // Список преимуществ
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: advantages.length,
                    itemBuilder: (context, index) {
                      return AdvantagesCard(
                          item: advantages[index],
                          localizations: localizations);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Модель преимущества.
class AdvantagesItem {
  final String title; // key for localization
  final String description; // key for localization
  final IconData icon;

  AdvantagesItem({
    required this.title,
    required this.description,
    required this.icon,
  });
}

/// Виджет карточки преимущества.
class AdvantagesCard extends StatelessWidget {
  final AdvantagesItem item;
  final AppLocalizations localizations;

  AdvantagesCard({required this.item, required this.localizations});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          item.icon,
          color: Colors.blueAccent,
          size: 40,
        ),
        title: Text(
          localizations.get(item.title),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          localizations.get(item.description),
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}

/// Страница "О компании".
class AboutUsPage extends StatelessWidget {
  final AppLocalizations localizations;

  AboutUsPage({required this.localizations});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Фоновый градиент
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade900, Colors.deepPurple.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Контент страницы "О компании"
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Заголовок страницы
                  Text(
                    localizations.get('aboutUs'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Описание страницы
                  Text(
                    localizations.get('about_company'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Контакты
                  Text(
                    localizations.get('contacts'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Телеграмм
                  ContactRow(
                    icon: FontAwesomeIcons.telegram,
                    color: Colors.blueAccent,
                    text: localizations.get('telegram'),
                  ),
                  SizedBox(height: 16),
                  // WhatsApp
                  ContactRow(
                    icon: FontAwesomeIcons.whatsapp,
                    color: Colors.greenAccent,
                    text: localizations.get('whatsapp'),
                  ),
                  SizedBox(height: 16),
                  // Почта
                  ContactRow(
                    icon: Icons.email,
                    color: Colors.orangeAccent,
                    text: localizations.get('email'),
                  ),
                  SizedBox(height: 16),
                  // Адрес
                  ContactRow(
                    icon: Icons.location_on,
                    color: Colors.redAccent,
                    text: localizations.get('address'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Виджет строки контакта עם אייקון וטקסט.
class ContactRow extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  ContactRow({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Центрируем содержимое строки
      children: [
        FaIcon(
          icon,
          color: color,
          size: 30,
        ),
        SizedBox(width: 16),
        Flexible(
          child: Text(
            text,
            textAlign: TextAlign.left, // Выровняно по левому краю
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight:
                  FontWeight.bold, // Увеличиваем жирность шрифта
            ),
          ),
        ),
      ],
    );
  }
}

/// Страница "Цены".
class PricesPage extends StatelessWidget {
  final AppLocalizations localizations;

  PricesPage({required this.localizations});

  final List<PriceItem> priceItems = [
    PriceItem(
      category: 'price_delivery_documents',
      price: '3000 ₽',
    ),
    PriceItem(
      category: 'price_religious_items',
      price: '2500 ₽',
    ),
    PriceItem(
      category: 'price_clothing',
      price: '2300 ₽',
    ),
    PriceItem(
      category: 'price_kosher_food',
      price: '2600 ₽',
    ),
    PriceItem(
      category: 'price_duty_free',
      price: '3000 ₽',
    ),
    PriceItem(
      category: 'price_small_packages',
      price: '3000 ₽',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Фоновый градиент
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo.shade900, Colors.indigo.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Контент страницы "Цены"
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Заголовок страницы
                Text(
                  localizations.get('prices'),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                // Расширенное описание страницы
                Text(
                  localizations.get('prices_description'),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                // Список цен
                Expanded(
                  child: ListView.builder(
                    itemCount: priceItems.length,
                    itemBuilder: (context, index) {
                      return PriceCard(
                        priceItem: priceItems[index],
                        localizations: localizations,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Модель для цены.
class PriceItem {
  final String category; // key for localization
  final String price;

  PriceItem({required this.category, required this.price});
}

/// Виджет для отображения цены.
class PriceCard extends StatelessWidget {
  final PriceItem priceItem;
  final AppLocalizations localizations;

  PriceCard({required this.priceItem, required this.localizations});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          Icons.attach_money,
          color: Colors.white,
          size: 40,
        ),
        title: Text(
          localizations.get(priceItem.category),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold, // Увеличиваем жирность шрифта
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          priceItem.price,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    '${localizations.get('select')}${localizations.get(priceItem.category)}')),
          );
        },
      ),
    );
  }
}

/// Страница с товарами.
class ProductsPage extends StatelessWidget {
  final Function(CargoCategory, GlobalKey) onAddToCart;
  final AppLocalizations localizations;

  ProductsPage({required this.onAddToCart, required this.localizations});

  final List<CargoCategory> categories = [
    CargoCategory(
      name: 'price_delivery_documents',
      price: '3000 ₽',
      deliveryCost: 3000,
      icon: Icons.document_scanner,
    ),
    CargoCategory(
      name: 'price_religious_items',
      price: '2500 ₽',
      deliveryCost: 2500,
      icon: Icons.account_balance,
    ),
    CargoCategory(
      name: 'price_clothing',
      price: '2300 ₽',
      deliveryCost: 2300,
      icon: Icons.shopping_bag,
    ),
    CargoCategory(
      name: 'price_kosher_food',
      price: '2600 ₽',
      deliveryCost: 2600,
      icon: Icons.restaurant,
    ),
    CargoCategory(
      name: 'price_duty_free',
      price: '3000 ₽',
      deliveryCost: 3000,
      icon: Icons.local_offer,
    ),
    CargoCategory(
      name: 'price_small_packages',
      price: '3000 ₽',
      deliveryCost: 3000,
      icon: Icons.local_shipping,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Фоновый градиент
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.brown.shade900, Colors.brown.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Контент страницы "Товары"
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Заголовок страницы
                Text(
                  localizations.get('products'),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                // Расширенное описание страницы
                Text(
                  localizations.get('products_description'),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 16),
                // Список товаров
                Expanded(
                  child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final GlobalKey iconKey = GlobalKey();
                      return CargoCard(
                        category: categories[index],
                        onAddToCart: () =>
                            onAddToCart(categories[index], iconKey),
                        key: iconKey,
                        localizations: localizations,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Модель для категории груза.
class CargoCategory {
  final String name; // key for localization
  final String price;
  final int deliveryCost; // numerical cost for calculation
  final IconData icon;

  CargoCategory({
    required this.name,
    required this.price,
    required this.deliveryCost,
    required this.icon,
  });
}

/// Виджет для отображения товара.
class CargoCard extends StatelessWidget {
  final CargoCategory category;
  final VoidCallback onAddToCart;
  final AppLocalizations localizations;

  CargoCard({
    required this.category,
    required this.onAddToCart,
    Key? key,
    required this.localizations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      margin:
          EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding:
            EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        leading: Icon(
          category.icon,
          color: Colors.white,
          size: 40,
        ),
        title: Text(
          localizations.get(category.name),
          style: TextStyle(
            fontSize: 18,
            fontWeight:
                FontWeight.bold, // Увеличиваем жирность шрифта
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          category.price,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.add_shopping_cart,
            color: Colors.blueAccent,
            size: 30,
          ),
          onPressed: onAddToCart,
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    '${localizations.get('select')}${localizations.get(category.name)}')),
          );
        },
      ),
    );
  }
}

/// Страница "Настройки".
class SettingsPage extends StatelessWidget {
  final AppLocalizations localizations;
  final Function(String) onLocaleChange;

  SettingsPage({required this.localizations, required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    String currentLocale = localizations.locale;
    return Stack(
      children: [
        // Фоновый градиент
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black87, Colors.grey.shade800],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Контент страницы "Настройки"
        SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              children: [
                // Заголовок страницы
                Text(
                  localizations.get('settings'),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                // Описание страницы
                Text(
                  localizations.get('settings_page_description'),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                // Language Selection with Enhanced Animation
                AnimatedLanguageSelector(
                  currentLocale: currentLocale,
                  onLocaleChange: onLocaleChange,
                  localizations: localizations,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Виджет для выбора языка с улучшенной анимацией.
class AnimatedLanguageSelector extends StatefulWidget {
  final String currentLocale;
  final Function(String) onLocaleChange;
  final AppLocalizations localizations;

  AnimatedLanguageSelector({
    required this.currentLocale,
    required this.onLocaleChange,
    required this.localizations,
  });

  @override
  _AnimatedLanguageSelectorState createState() =>
      _AnimatedLanguageSelectorState();
}

class _AnimatedLanguageSelectorState
    extends State<AnimatedLanguageSelector>
    with SingleTickerProviderStateMixin {
  late String _selectedLocale;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _selectedLocale = widget.currentLocale;
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  void _toggleDropdown() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  void _selectLocale(String locale) {
    widget.onLocaleChange(locale);
    setState(() {
      _selectedLocale = locale;
      _isExpanded = false;
      _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleDropdown,
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _getLanguageName(_selectedLocale),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
                Icon(
                  _isExpanded
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        SizeTransition(
          sizeFactor: _animation,
          axisAlignment: -1.0,
          child: Container(
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                languageOption(
                    'ru', widget.localizations.get('language_ru')),
                languageOption(
                    'en', widget.localizations.get('language_en')),
                languageOption(
                    'he', widget.localizations.get('language_he')),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget languageOption(String locale, String languageName) {
    return GestureDetector(
      onTap: () => _selectLocale(locale),
      child: Container(
        width: double.infinity,
        padding:
            EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Text(
          languageName,
          style: TextStyle(
            color: _selectedLocale == locale
                ? Colors.blueAccent
                : Colors.white,
            fontSize: 16,
            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),
    );
  }

  String _getLanguageName(String locale) {
    switch (locale) {
      case 'ru':
        return widget.localizations.get('language_ru');
      case 'en':
        return widget.localizations.get('language_en');
      case 'he':
        return widget.localizations.get('language_he');
      default:
        return widget.localizations.get('language_ru');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

/// Страница "Рассчитать доставку".
class CalculateDeliveryPage extends StatefulWidget {
  final AppLocalizations localizations;

  CalculateDeliveryPage({required this.localizations});

  @override
  _CalculateDeliveryPageState createState() => _CalculateDeliveryPageState();
}

class _CalculateDeliveryPageState extends State<CalculateDeliveryPage> {
  final _formKey = GlobalKey<FormState>();
  String? _originCity;
  String? _destinationCity;
  int? _deliveryCost;
  List<CargoCategory> _selectedProducts = [];

  // Определяем внутренние коды городов
  final List<String> _cities = ['moscow', 'tel_aviv'];

  // Определяем стоимости доставки между городами
  final Map<String, Map<String, int>> _deliveryCosts = {
    'moscow': {'tel_aviv': 5000},
    'tel_aviv': {'moscow': 5500},
  };

  // Определяем список доступных товаров
  final List<CargoCategory> _availableProducts = [
    CargoCategory(
      name: 'price_delivery_documents',
      price: '3000 ₽',
      deliveryCost: 3000,
      icon: Icons.document_scanner,
    ),
    CargoCategory(
      name: 'price_religious_items',
      price: '2500 ₽',
      deliveryCost: 2500,
      icon: Icons.account_balance,
    ),
    CargoCategory(
      name: 'price_clothing',
      price: '2300 ₽',
      deliveryCost: 2300,
      icon: Icons.shopping_bag,
    ),
    CargoCategory(
      name: 'price_kosher_food',
      price: '2600 ₽',
      deliveryCost: 2600,
      icon: Icons.restaurant,
    ),
    CargoCategory(
      name: 'price_duty_free',
      price: '3000 ₽',
      deliveryCost: 3000,
      icon: Icons.local_offer,
    ),
    CargoCategory(
      name: 'price_small_packages',
      price: '3000 ₽',
      deliveryCost: 3000,
      icon: Icons.local_shipping,
    ),
  ];

  void _calculateDelivery() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      if (_originCity == _destinationCity) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'Города отправления и назначения одинаковы.')),
        );
        setState(() {
          _deliveryCost = null;
        });
        return;
      }

      if (_originCity != null &&
          _destinationCity != null &&
          _deliveryCosts.containsKey(_originCity!) &&
          _deliveryCosts[_originCity!]!.containsKey(_destinationCity!)) {
        int baseCost =
            _deliveryCosts[_originCity!]![_destinationCity!] ?? 0;
        int productsCost = 0;
        for (var product in _selectedProducts) {
          productsCost += product.deliveryCost;
        }
        setState(() {
          _deliveryCost = baseCost + productsCost;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Стоимость доставки не определена.')),
        );
        setState(() {
          _deliveryCost = null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Фоновый градиент
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange.shade400,
                Colors.deepOrangeAccent.shade700,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Контент страницы "Рассчитать доставку"
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Заголовок страницы
                    Text(
                      widget.localizations.get('calculate_delivery'),
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 24),
                    // Иконка перед выбором города отправления
                    Row(
                      children: [
                        Icon(
                          Icons.departure_board,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText:
                                  widget.localizations.get('origin_city'),
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            value: _originCity,
                            items: _cities.map((String city) {
                              return DropdownMenuItem<String>(
                                value: city,
                                child: Text(
                                  widget.localizations.get(city),
                                  style: TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _originCity = newValue;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return widget.localizations.get(
                                    'select_origin_city');
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    // Иконка перед выбором города назначения
                    Row(
                      children: [
                        Icon(
                          Icons.flight_land, // Заменили на валидную иконку
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText:
                                  widget.localizations.get('destination_city'),
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            value: _destinationCity,
                            items: _cities.map((String city) {
                              return DropdownMenuItem<String>(
                                value: city,
                                child: Text(
                                  widget.localizations.get(city),
                                  style: TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _destinationCity = newValue;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return widget.localizations.get(
                                    'select_destination_city');
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    // Выбор товаров
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.localizations.get('products'),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    // Список товаров с чекбоксами
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: _availableProducts.map((product) {
                          return CheckboxListTile(
                            title: Text(
                              widget.localizations.get(product.name),
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              product.price,
                              style: TextStyle(color: Colors.white70),
                            ),
                            value: _selectedProducts.contains(product),
                            onChanged: (bool? value) {
                              setState(() {
                                if (value == true) {
                                  _selectedProducts.add(product);
                                } else {
                                  _selectedProducts.remove(product);
                                }
                              });
                            },
                            activeColor: Colors.blueAccent,
                            checkColor: Colors.white,
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 24),
                    // Кнопка рассчитать
                    ElevatedButton(
                      onPressed: _calculateDelivery,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.blueAccent, // Заменили primary на backgroundColor
                      ),
                      child: Text(
                        widget.localizations.get('calculate'),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    // Отображение стоимости доставки
                    _deliveryCost != null
                        ? Text(
                            '${widget.localizations.get('delivery_cost')}${_deliveryCost!} ₽',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.greenAccent,
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
