import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/models/article_model.dart';
import 'package:flutter_codeyad_techblog/models/blog_model.dart';
import 'package:flutter_codeyad_techblog/models/hash_tag_model.dart';
import 'package:flutter_codeyad_techblog/models/pod_cast_model.dart';
import 'package:flutter_codeyad_techblog/models/user_model.dart';

class FakeDatabaseService {
  Future<ArticleModel> getArticleHomePage() async {
    return Future.delayed(const Duration(seconds: 5), () {
      return ArticleModel(
        writer: 'محمد تقی خادمی',
        imagePath: Assets.images.poster1.path,
        date: 'دو روز پیش',
        title:
            'آینده برنامه نویس ها با وجود پس بهتر است که دقت کنیم هوش مصنوعی',
        view: '200',
      );
    });
  }

  Future<List<HashTagModel>> getHashTagListAsync() async {
    return Future.delayed(const Duration(seconds: 3), () {
      return [
        HashTagModel(title: 'برنامه نویسی'),
        HashTagModel(title: 'سی شارپ'),
        HashTagModel(title: 'هوش مصنوعی'),
        HashTagModel(title: 'دنیای گیم'),
        HashTagModel(title: 'جاوا'),
        HashTagModel(title: 'دنیای وب'),
      ];
    });
  }

  Future<List<BlogModel>> getBlogModelsAsync() async {
    return Future.delayed(const Duration(seconds: 7), () {
      return [
        BlogModel(
          id: 1,
          imageUrl:
              "https://static.digiato.com/digiato/2024/06/bitcoin-910x600.jpg",
          title: "قیمت بیت کوین امروز تا 60‌ هزار دلار سقوط کرد",
          writer: "تینا پورشاهید",
          writerImageUrl:
              "https://digiato.com/wp-content/uploads/avatars/217840-32x32.jpg",
          date: "۴ تیر ۱۴۰۳ | ۱۷:۳۰",
          content: """
آیا روند ریزش قیمت بیت کوین ادامه دارد؟
«جیمز باترفیل»، رئیس تحقیقات دارایی‌های متمرکز بر کریپتو، می‌گوید: «درحال‌حاضر شاهد خروج 1.2 میلیارد دلار از ETF‌های کریپتو در دو هفته گذشته هستیم. همه این‌ها پس از جلسه FOMC آغاز شد. باور ما این است که بدبینی مداوم به کاهش نرخ‌ها، بر احساسات درباره بازار کریپتو تأثیر می‌گذارد.»

وی افزود: «فدرال رزرو اعلام کرده است نیاز به شواهد بیشتری از کاهش تورم دارد تا به سیاست‌های ساده‌تری روی بیاورد. هر نشانه‌ای که بگوید تورم همچنان کاهش می‌یابد، احتمالاً باعث حمایت از قیمت‌ها می‌شود و برعکس، داده‌های تورمی باعث ایجاد فشار بر قیمت‌ها می‌شود.»

«النور گیوود»، رئیس استراتژی Coincover، می‌گوید معمولاً پیش از انتشار شاخص هزینه‌های مصرف شخصی که یکی از معیار‌های ترجیحی برای تورم فدرال رزرو است، نوساناتی در بازار دیده می‌شود. این اطلاعات قرار است جمعه آینده منتشر شوند. همچنین افزود نشانه‌هایی از کاهش نرخ‌ها در سپتامبر می‌تواند اضطراب سرمایه‌گذاران را کاهش بدهد و قیمت بیت‌کوین را تثبیت کند.

قیمت برخی رمزارزها با بیت‌کوین کاهش پیدا کردند. قیمت اتر 4‌ درصد، توکن پلتفرم قراردادهای هوشمند سولانا 3‌ درصد، توکن XRP حدود یک درصد و توکن میم دوج‌کوین تقریباً 5 درصد کاهش یافتند.
""",
          view: "10",
        ),
        BlogModel(
          id: 2,
          imageUrl:
              "https://static.digiato.com/digiato/2024/06/Samsung-One-UI-7.0-910x600.jpg",
          title:
              "یکی از ویژگی‌های امنیتی کاربردی رابط کاربری One UI 7 سامسونگ لو رفت",
          writer: "محمد قریشی",
          writerImageUrl:
              "https://digiato.com/wp-content/uploads/avatars/210361-32x32.jpg",
          date: "۴ تیر ۱۴۰۳ | ۱۶:۰۰",
          content: """
همان‌طور که در اسکرین‌شات بالا مشاهده می‌کنید، با قابلیتی جدید به نام App Lock‌ روبه‌رو هستیم که در بخش ویژگی‌های پیشرفته (Advanced Features) بعد از گزینه Dual Messenger قرار گرفته است. درحال‌حاضر در بخش تنظیمات و ویژگی‌های پیشرفته، فقط گزینه Dual Messenger به چشم می‌خورد.

اکنون هم‌ می‌توان اپ‌ها، اسناد و فایل‌های مهم را درون Secure Folder مخفی کرد اما فرایندی تقریباً پیچیده روبه‌رویمان است؛ بنابراین افزودن گزینه قفل‌کردن اپلیکیشن‌ها می‌تواند این فرایند را ساده‌تر کند و کاربران می‌توانند به‌راحتی اپ‌های مدنظرشان را قفل کنند تا دیگران به آن‌ها دسترسی نداشته باشند.

درنهایت باید به این موضوع اشاره کرد که این فقط یک شایعه است و شاید درنهایت این ویژگی به رابط کاربری سامسونگ اضافه نشود. علاوه‌براین، شاید قابلیت App Lock‌ پیش از رابط کاربری One UI 7، در آپدیت One UI 6.1.1‌ از راه برسد.
""",
          view: "10",
        ),
        BlogModel(
          id: 3,
          imageUrl:
              "https://static.digiato.com/digiato/2024/06/MacBook-Air-M2-Chip-Purple-Feature-910x600.jpg",
          title:
              "این قابلیت هوش مصنوعی اپل روی مک‌ها با 8 گیگابایت رم اجرا نمی‌شود",
          writer: "۴ تیر ۱۴۰۳ | ۱۳:۳۰",
          writerImageUrl:
              "https://digiato.com/wp-content/uploads/avatars/290164-142x142.jpeg",
          date: "۴ تیر ۱۴۰۳ | ۱۳:۳۰",
          content: """
اپل در رویداد امسال WWDC خود از Apple Intelligence رونمایی کرد که قابلیت‌های گوناگونی دارد. در محیط توسعه Xcode 16، یکی از قابلیت‌های جذاب هوش مصنوعی که اضافه شده، «Predictive Code Completion» است که فرایند کدنویسی را سریع‌ و راحت‌تر می‌کند؛ بااین‌حال اگر مک شما 8 گیگابایت رم داشته باشد، نمی‌توانید از آن استفاده کنید و باید سراغ سیستمی با حداقل 16 گیگابایت رم بروید.

براساس گزارش XDA، یکی از مزیت‌های جدید Xcode 16 (ابزار توسعه نرم‌افزار در پلتفرم‌های اپل، مانند iOS و macOS) قابلیتی است به نام Predictive Code Completion که متأسفانه با 8 گیگابایت رم قابل‌استفاده نیست. برای استفاده از ابزار «تکمیل کد پیش‌بینی‌کننده» در Xcode 16 نیاز به رم بیشتری دارید.
""",
          view: "10",
        ),
        BlogModel(
          id: 4,
          imageUrl:
              "https://static.digiato.com/digiato/2024/06/20240611_173328-910x600.jpg",
          title:
              "آرین موتور شرایط فروش میتسوبیشی اوتلندر را اعلام کرد [تیر 1403]",
          writer: "مرتضی قانع",
          writerImageUrl:
              "https://digiato.com/wp-content/uploads/avatars/58838-32x32.jpg",
          date: "۴ تیر ۱۴۰۳ | ۱۲:۱۵",
          content: """
هر سه تیپ ارائه‌شده در شرایط فروش میتسوبیشی اوتلندر مجهز به موتور 1.5 لیتری توربوشارژر هستند که 160 اسب‌بخار قدرت و 280 نیوتن‌متر گشتاور آزاد می‌کند. گیربکس اتوماتیک CVT با 8 دنده مصنوعی نیز وظیفه انتقال قدرت را در این خودروها برعهده دارد. همچنین چیدمان صندلی‌های تمامی این تیپ‌ها 5 نفره است. در دور پیشین واردات خودرو نیز آرین موتور میتسوبیشی اوتلندر را با مشخصات و ظاهر متفاوت از نسل فعلی، وارد کشور کرده بود.
""",
          view: "10",
        ),
        BlogModel(
          id: 5,
          imageUrl:
              "https://static.digiato.com/digiato/2024/06/photo_2024-03-03_11-12-07-910x600.jpg",
          title: "مرحله جدید عرضه خودروهای وارداتی آغاز شد",
          writer: "مرتضی قانع ",
          writerImageUrl:
              "https://digiato.com/wp-content/uploads/avatars/58838-32x32.jpg",
          date: "۴ تیر ۱۴۰۳ | ۱۱:۱۵",
          content: """
مرحله جدید عرضه خودروهای وارداتی در سامانه یکپارچه، از یکشنبه سوم تیرماه 1403 آغاز شده است. این سامانه تا چهارشنبه ششم تیرماه 1403، در دسترس متقاضیان خواهد بود. متقاضیان می‌توانند از بین تمامی محصولات ارائه‌شده پنج انتخاب داشته باشند. درصورتی‌که یکی از این پنج انتخاب به متقاضیان تخصیص داده شود، امکان لغو سفارش و تغییر خودرو در مراحل بعدی وجود ندارد. همچنین متقاضیان باید حداقل یک انتخاب انجام بدهند. همچنین پس از تخصیص خودرو وارداتی به متقاضی و درصورت واریزنکردن وجه، متقاضی از لیست سامانه یکپارچه خودروهای وارداتی حذف خواهد شد.

قوانین سخت‌گیرانه مرحله جدید عرضه خودروهای وارداتی پس‌ازآن وضع شد که بسیاری از خریداران از انتخاب و ثبت‌سفارش خودرو خودداری می‌کردند. اگر متقاضیان خودرو را انتخاب‌ نمی‌کردند، گروه جدید خریداران امکان ثبت‌نام و خرید خودروهای وارداتی را نداشتند؛ درنتیجه بسیاری از متقاضیان خودروهای وارداتی که امکان ثبت‌نام جدید نداشتند، به این شرایط معترض شدند.

سامانه یکپارچه در اطلاعیه خود پیرامون مرحله شانزدهم عرضه خودروهای وارداتی چنین بیان کرده است:

«باتوجه‌به ۱۵ مرحله عرضه صورت گرفته و فراهم بودن امکان تخصیص خودرو و عدم‌اقدام برای تعیین خودرو توسط برخی از متقاضیان، بدین‌وسیله اعلام می‌گردد با عنایت به تنوع سبد محصولاتی قابل‌عرضه، درصورت عدم‌اقدام در این مرحله و مرحله بعدی، اولویت اعلامی این افراد حذف خواهد شد. متقاضیان حذف‌شده در مرحله جدید ثبت‌نام که برای عموم مردم فراهم می‌شود، ‌مشابه سایر افراد و براساس شرایط اعلامی اقدام کنند. هیچ‌گونه اعتراضی در این خصوص پذیرفته نخواهد شد.»
""",
          view: "10",
        ),
        BlogModel(
          id: 6,
          imageUrl:
              "https://static.digiato.com/digiato/2024/06/1-8_16-910x600.jpg",
          title: "خرید ترموود اورجینال شرکتی",
          writer: "واحد تبلیغات ",
          writerImageUrl:
              "https://digiato.com/wp-content/uploads/avatars/21900-32x32.jpg",
          date: " ۴ تیر ۱۴۰۳ | ۱۱:۰۰",
          content: """
شرکت پارس وود یک شرکت نوآور و پیشرو در زمینه واردات و تولید محصولات چوبی و ترمووود است که با استفاده از فناوری منحصربه‌فرد خود، چوب را به محصولی با دوام و کیفیت بالا تبدیل می‌کند. این شرکت با استفاده از فرایند حرارتی خاص، چوب را به محصولات ترموود با مقاومت بالا تبدیل می‌کند.

فناوری ترمووود باعث افزایش دوام و مقاومت چوب در برابر عوامل محیطی می‌شود. اما معدود تولید کنندگانی هستند که با استفاده از دستگاه‌های مجهز بهترین محصول را در کشور با دسترسی آسان تولید می‌کنند، شرکت پارس وود از جمله تولید کنندگانی است که محصولات اورجینال تولید می‌کند و به دست مشتریان خود می‌رساند و آنها را از هزینه‌های گزاف حمل و نقل خارجی و خرید از کشورهای دیگر بی نیاز کرده است.

برای خرید ترموود اورجینال اطلاعاتی باید در مورد تشخیص اصل بودن ترموود داشته باشیم در اینجا توصیه‌هایی برای انتخاب بهترین نوع ترموود برای پروژه‌های شما ارائه می‌دهیم:

1. نوع درخت:
- چوب یولکا، ساسنا، عش و چوب کاج، چوب‌های درختانی هستند که ترموود از آنها فراوری می‌شود.

چوب یولکا به علت دانسیته پایین‌تر آن بیشتر در فضا داخلی استفاده می‌شود، چوب ساسنا به علت کیفیت و دانسیته بالای آن در فضاهای خارجی استفاده می‌گردد و از کیفیت بالاتری برخوردار است. چوب کاج نیز به خاطر کیفیت بالا در کفپوش‌های فضای باز و در فضاهای خارجی استفاده می‌گردد. چوب عش نیز بخاطر دانسیته و وزن بسیار بالا جهت کفپوش‌های فضای خارجی و استخرها استفاده می‌گردد.
""",
          view: "10",
        ),
      ];
    });
  }

  Future<List<PodCastModel>> getPodCastsAsync() async => Future.delayed(
        Duration(seconds: 2),
        () {
          return [
            PodCastModel(
              title: 'AI',
              imageUrl:
                  'https://api2.zoomit.ir/media/1hilgartner67158-min-66781a694b10d5a6894be0a0?w=384&q=75',
            ),
            PodCastModel(
              title: 'GAME',
              imageUrl:
                  'https://api2.zoomit.ir/media/woman-holding-laptop-lg-tandem-oled-display-667974e1772792639dec6946?w=384&q=75',
            ),
            PodCastModel(
              title: 'Programming',
              imageUrl:
                  'https://api2.zoomit.ir/media/xiaomi-logo-on-chipset-66798127772792639dec69b8?w=384&q=75',
            ),
            PodCastModel(
              title: 'Motivation',
              imageUrl:
                  'https://api2.zoomit.ir/media/i7-laptops-659547cf494c1ffd7082c79c?w=384&q=75',
            ),
            PodCastModel(
              title: 'AI',
              imageUrl: '',
            )
          ];
        },
      );

  Future<List<UserModel>> getUsersAsync() async {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        return [
          UserModel(
            id: 1,
            userName: "mt.khademi",
            password: "123",
            fullName: "محمد تقی خادمی",
            imageUrl: "",
            email: "mt.khademi@gmail.com",
          )
        ];
      },
    );
  }
}
