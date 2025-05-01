import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

import '../controller/responsive.dart';
import '../view/widgets/heroImageFullscreen.dart';
import 'imageData.dart';
import 'textTheme.dart';

class PageViewContent {
  static List<Widget> getContentLargeDevice(BuildContext context) {
    return [
      const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Willkommen auf der Webseite meiner Gesundheitspraxis\nmit Schwerpunkt auf die Massage und Rückentherapie.',
            style: CustomTextTheme.titleLarge,
          ),
          SizedBox(height: 25),
          Text(
            'Vieles was wir in unserem Leben erfahren, lastet nicht nur auf unseren Schultern, sondern wirkt auf unseren gesamten Körper.\nUnd im Zentrum steht dabei unser Rücken.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Die Komplexität der Zusammenhänge unseres Bewegungsapparates erfordern unterschiedlichste Behandlungs- und Therapieansätze.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Ich würde mich daher sehr freuen, wenn ich, angepasst an Deine persönlichen Bedürfnisse, Dir eine individuelle Therapiebehandlung anbieten dürfte.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Brigitte Müller',
            style: CustomTextTheme.bodyLarge,
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wirbelsäulen-Basis-Ausgleich - WBA nach Rolf Ott',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Beim Wirbelsäulen-Basis-Ausgleich werden eine Reihe verschiedener Behandlungsformen miteinander kombiniert:\nOhr-Tastbefund, Akupunkt-Massage, Korrektur des Beckenschiefstandes. Ebenso verschiedene manuelle Techniken wie:\nMassage-, Dehn- und Bewegungstechniken.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Auf dem patentierten Schwingkissen wird die Muskulatur mit ihren Faszien durch Schwing- und Bewegungstechniken entlastet. Die Gelenke werden sanft mobilisiert und die Regeneration der Knorpel und Bandscheiben können so unterstützt werden.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Position des Kreuzbeins und des Beckens spielt dabei eine entscheidende Rolle für die Statik des gesamten Skeletts.\nSo kann ein Beckenschiefstand über lange Zeit zu einer Fehlhaltung führen und eine Abnützung der Gelenke zur Folge haben.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displayLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Chronische und akute Rückenbeschwerden',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Ischialgien',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Blockaden an der Hals-, Brust- und Lendenwirbelsäule',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Kopfschmerzen, Migräne, Schwindel',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Beckenfehlstellungen mit Beinlängen-Differenzen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/schwingkissen.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.8).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wirbelsäulen-Therapie nach Dorn',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Die Dorn-Methode dient der sanften Behandlung von Wirbel- und Gelenkblockaden.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Verschobene Wirbel und Gelenke werden in sanften Bewegungen in ihre ursprüngliche Position zurückgeführt.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Durch eine vorhergehende Massage wird die Muskulatur zuvor entspannt und gelockert, so können auch bestehende Beckenschiefstände ausgeglichen werden.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displayLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Rücken- und Halsschmerzen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Hals- und Nackenbeschwerden',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Kreuzbeschwerden',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Beckenschiefstand',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Halskehre',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Kopfschmerzen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Tinnitus',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: DropShadow(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: ResizeImage(
                        const AssetImage('images/dorn_1.jpeg'),

                        ///nimmt einfach maximalen Platz ein
                        width:
                            (MediaQuery.of(context).size.width / 3.5).round(),
                        height:
                            (MediaQuery.of(context).size.width / 5.5).round(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: DropShadow(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: ResizeImage(
                        const AssetImage('images/dorn_2.jpeg'),
                        width:
                            (MediaQuery.of(context).size.width / 3.5).round(),
                        height:
                            (MediaQuery.of(context).size.width / 5.5).round(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rückenmuskel-Therapie nach Breuss',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Die Breuss-Massage, auch „Verjüngungskur für die Bandscheibe“ genannt,\nist eine manuelle - energetische Rückenmassage, die körperliche Blockaden löst.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Mit der Breuss-Massage wird durch sanftes Dehnen der Wirbelsäule Raum für die Bandscheiben geschaffen. So hilft die Johanniskrautöl-Anwendung den Bandscheiben, in dem nun entlasteten Zustand, zu regenerieren.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displayLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Bandscheibenbeschwerden',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Verspannungen der Rückenmuskulatur',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Blockaden der Wirbelsäule',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/breuss.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.8).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Schmerz-Therapie nach Liebscher & Bracht',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Liebscher & Bracht gehen davon aus, dass eine erhöhte Spannung in den Muskeln und Faszien zu vielen körperlichen Schmerzen führt.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Ursachen sind meist engwinklige Bewegungen und einwinklige Positionen, die über viele Jahre die Muskulatur und die Faszien verkürzen und verfilzen und den Verschleiß der Gelenke durch die entstehenden Spannungen erheblich erhöhen.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Therapie besteht aus drei Techniken:\nDrücken, Rollen und Dehnen.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displayLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'akute und chronische Schmerzzustände',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Bewegungsschmerzen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Bewegungseinschränkungen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/schmerztherapie_cut.jpg'),
                    width: (MediaQuery.of(context).size.width / 1.8).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Engpassdehnungen nach Liebscher & Bracht',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Engwinklige Bewegungen und einseitige Positionen führen über die Jahre zu Verkürzungen der Muskeln und Faszien.\nDie daraus entstehenden Spannungen führen wiederum zu einem erhöhten Verschleiß der Gelenke.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Um dieser Entwicklung entgegenzuwirken und begleitende Bewegungseinschränkungen und Bewegungsschmerzen nach und nach zu reduzieren oder vorzubeugen, biete ich kleine Gruppenstunden.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'So kann jeder, der sich zu Hause weder motivieren noch anleiten mag, sich bei uns in einer gemütlichen Runde einfinden, um für sich mehr Bewegungsfreiheit aufzubauen oder zu erhalten.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die angebotene Technik ist ein Dehnen und eine Stärkung der verschiedensten Muskeln und Faszien, je nach Bedarf.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Die Gruppenstunden sind jeweils am Dienstag und Donnerstag.\nZwischen 18.30 - 20.00 Uhr',
            style: CustomTextTheme.bodyLarge,
          ),
          if (ResponsiveWidget.isMediumScreen(context)) ...[
            const Row(
              children: [
                Text(
                  'Anmeldung unter Tel.: ',
                  style: CustomTextTheme.bodyLarge,
                ),
                SelectableText(
                  '079 728 16 56',
                  style: CustomTextTheme.bodyLarge,
                ),
              ],
            ),
            const Text(
              'oder über Kontaktformular',
              style: CustomTextTheme.bodyLarge,
            ),
          ] else ...[
            const Row(
              children: [
                Text(
                  'Anmeldung unter Tel.: ',
                  style: CustomTextTheme.bodyLarge,
                ),
                SelectableText(
                  '079 728 16 56',
                  style: CustomTextTheme.bodyLarge,
                ),
                Text(
                  ' oder über Kontaktformular',
                  style: CustomTextTheme.bodyLarge,
                ),
              ],
            ),
          ],
          const Text(
            'Maximal 7 Personen - 25 CHF/p.P.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Mitnehmen:',
            style: CustomTextTheme.displayLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'eine Decke für die Gymnastikmatte',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Text(
                'Antirutschsocken oder ähnliches',
                style: CustomTextTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/engpassdehnung.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.8).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'RESET – Kieferentspannung / Kiefergelenks-Balancierung',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Ein sanftes System nach Philip Rafferty, welches nicht nur die Kiefermuskeln entspannt, sondern auch zu einem positiven Einfluss auf den ganzen Organismus führt.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Das Kiefergelenk mit der Kaumuskulatur stellen zusammen eines der wichtigsten Stressorgane dar.\nEs ist aus der Osteopathie und der Cranio Therapie bekannt, dass das Kiefergelenk einen starken Einfluss auf beinahe alle Körperfunktionen hat, wie Muskulatur, Skelett, Nerven- und Meridiansystem, Stoffwechsel und sogar auf den Wasserhaushalt.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displayLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Verspannungen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Kieferprobleme',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Nasen- und Nebenhöhlenprobleme',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Kopfschmerzen / Migräne',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Schlafstörungen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Tinnitus, nachlassendes Gehör',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/reset_kiefer.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.8).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Raindrop Massage nach Gary Young',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Die Raindrop Technik entspannt, richtet auf und wirkt zugleich unterstützend auf das Immunsystem.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Es ist eine Kombination von Pflanzenwirkstoffen und der Federstreich-Technik der Lakota Indianer.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            '9-10 hochwertige, ätherische Öle schaffen wieder Ordnung in Gehirn und den Organen und führen zu einer Entgiftung des Bindegewebes.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Raindrop Technik ist eine einzigartige Entspannungsanwendung\nfür Körper und Geist.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Und die Wirkung der ätherischen Öle können bis zu einer Woche nachwirken.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/raindrop_massage.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.8).round(),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: SizedBox(
              width: 1250,
              child: Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  textColor: Colors.black,
                  backgroundColor: Colors.white.withOpacity(0.4),
                  collapsedBackgroundColor: Colors.white.withOpacity(0.4),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  tilePadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  childrenPadding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 15, top: 10),
                  iconColor: Colors.black87,
                  collapsedIconColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: Text(
                    'Wirkungen der ätherischen Öle:',
                    style: CustomTextTheme.displayLarge
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  children: const [
                    Text(
                      'Valor:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'Mut, Aufrichtung, Selbstvertrauen, Hexenschuss, Rückenschmerzen, richtet Wirbelsäule auf (der Chiropraktiker in Flasche)',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Oregano:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'aktivierend, reinigend, sehr wirksames antimikrobielles Öl, stark im Entgiften, Knochenaufbau, Sicherheitsgefühl',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Thymian:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'aktivierend, reinigend, Immunsystem, wärmend, kräftigend, gegen Entzündungen, unterstützt Heilungsprozess',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Basilikum:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'aktivierend, befreiend, entspannt Muskeln, Blutgefässe, Organe, stärkt Nerven und Gelenke, bei Entzündungen, lindert mentale Erschöpfung, Spannungskopfschmerzen',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Zypresse:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'hilft alles loszulassen und sich für Neues zu öffnen, Kreislauf, Durchblutung, stärkt Blutgefässes, gegen Ödeme, fördert Lymphfluss',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Wintergrün:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'schmerzlindernd, entzündungshemmend (chemisch ähnlich wie Aspirin), regt Ausschüttung des körpereigenen Kortisons an, reinigt die Zell-Rezeptoren, stark entgiftend und entschlackend',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Majoran:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'sehr entspannend körperlich und emotional, Muskelverspannungen, Zerrungen, Prellungen, Sehnen, Bänder, Hormonhaushalt, beruhigend auf Nervensystem, bei Migräne',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Aroma Siez:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'Entspannt Muskeln, Nerven, Gelenke, Sehnen, Bänder, Krampflösend, Kopfschmerzen',
                      style: CustomTextTheme.oeleLarge,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Pfefferminz:',
                      style: CustomTextTheme.oeleTitleLarge,
                    ),
                    Text(
                      'stärkend, Verdauungs-, Atmungs- und Nervensystem, Gelenke, Muskeln, fördert Konzentration, entgiftet Leber, verstärkt die Wirkung der anderen Öle! SEHR KÜHLEND!',
                      style: CustomTextTheme.oeleLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Schröpf-Behandlung',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Die Methode des Schröpfens ist bereits mehr als 5000 Jahre alt und findet noch immer Anwendung in den verschiedensten Kulturen.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Ziel des Schröpfens ist es, die Selbstheilungskräfte des Organismus anzuregen.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Da die Organe mit der Körperoberfläche verbunden sind, können durch das Schröpfen auch auf innere erkrankte Organe eingewirkt werden.\nDurch die verstärkte Durchblutung an den Schröpfstellen wird der Stoffwechsel angeregt und so können Giftstoffe schneller ausgeschieden werden.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Diese Methode lässt sich auch gut mit einer Massage kombinieren.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displayLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Verspannungen, vor allem Rücken- und Gesässbereich',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Entzündungen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Gelenkschmerzen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Kopfschmerzen',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Blutdruckproblemen (Hypertonie oder Hypotonie)',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Bindegewebsschwäche (Cellulite)',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: DropShadow(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: ResizeImage(
                        const AssetImage('images/schroepfen_1.jpeg'),
                        width:
                            (MediaQuery.of(context).size.width / 3.5).round(),
                        height:
                            (MediaQuery.of(context).size.width / 5.5).round(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: DropShadow(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: ResizeImage(
                        const AssetImage('images/schroepfen_2.jpeg'),
                        width:
                            (MediaQuery.of(context).size.width / 3.5).round(),
                        height:
                            (MediaQuery.of(context).size.width / 5.5).round(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kartenlegung nach Dr. Chuck Spezzano',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Viele Ursachen des Schmerzes beginnen im Geiste und spiegeln uns oftmals die Beziehungen zu uns selbst und zu unserem Umfeld wider.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Mit den Symbolkarten des Psychologen Dr. Chuck Spezzano können wir diese Verbindungen und der Ursache gern nachgehen.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Beziehungsbetrachtungen von',
            style: CustomTextTheme.bodyLarge,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Gesundheit',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Mutter-Kind',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Familie',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Partnerschaft',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodyLarge),
              Expanded(
                child: Text(
                  'Beruf',
                  style: CustomTextTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HeroImageFullScreen(isSmallScreen: false);
                      }));
                    },
                    child: Hero(
                      tag: 'kartenlegung',
                      child: Image(
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                        image: ResizeImage(
                          const AssetImage('images/kartenlegung.jpeg'),
                          width:
                              (MediaQuery.of(context).size.width / 1.8).round(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dipl. Therapeutin Brigitte Müller\ngeboren 1969 in Wettingen',
            style: CustomTextTheme.titleLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Meine Leidenschaft findet sich im Teilen der Freude, seinen Körper in Einklang führen zu können.\nNicht nur für eine bessere Gesundheit, sondern für ein freudiges Miteinander, in Balance und Achtsamkeit, zu sich selbst.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Hierzu habe ich über viele Jahre verschiedenste Ausbildungen und Kurse absolviert, um Dir ein individuelles und passendes Angebot, nicht nur innerhalb einer Massage und Rückentherapie, anbieten zu können.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          const Text(
            'Ich freue mich auf Dich.',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 15),
          const Text(
            'Brigitte Müller',
            style: CustomTextTheme.bodyLarge,
          ),
          const SizedBox(height: 60),
          Center(
            child: DropShadow(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/brigitte.jpeg'),
                    height:
                        ResponsiveWidget.isVeryLargeScreen(context) ? 600 : 400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Preisanpassung ab 1.5.2025',
            style: CustomTextTheme.titleLarge,
          ),
          SizedBox(height: 25),
          Text(
            'Massage/Therapie für 30 Minuten     65.00 CHF',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Massage/Therapie für 60 Minuten    130.00 CHF',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Massage/Therapie für 75 Minuten    162.50 CHF',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Für die Raindrop-Massage kommen 20 CHF für die ätherischen Öle dazu.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 25),
          Text(
            'Falls eine Zusatzversicherung für Alternativmedizin besteht, werden Teile meiner Behandlungen durch einige Krankenkassen erstattet. Ich bitte Sie jedoch vorgängig, sich bei der Krankenkasse für die Kostenübernahme der entsprechenden Behandlungsmethode zu erkundigen.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 35),
          Text(
            'Ich danke Euch für Euer Vertrauen und freue mich, Euch auch weiterhin in meiner Praxis begrüssen zu dürfen.',
            style: CustomTextTheme.bodyLarge,
          ),
        ],
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Impressum',
            style: CustomTextTheme.titleLarge,
          ),
          SizedBox(height: 15),
          SelectableText(
            'Gesundheitspraxis Rückentherapie\nBrigitte Müller\nAlberich Zwyssigstrasse 36\n5430 Wettingen\ninfo@rueck-grad.ch\n+41 79 728 16 56',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 35),
          Text(
            'Haftungsausschluss',
            style: CustomTextTheme.titleLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Der Autor übernimmt keinerlei Gewähr hinsichtlich der inhaltlichen Richtigkeit, Genauigkeit, Aktualität, Zuverlässigkeit und Vollständigkeit der Informationen. Haftungsansprüche gegen den Autor wegen Schäden materieller oder immaterieller Art, welche aus dem Zugriff oder der Nutzung bzw. Nichtnutzung der veröffentlichten Informationen, durch Missbrauch der Verbindung oder durch technische Störungen entstanden sind, werden ausgeschlossen.\nAlle Angebote sind unverbindlich. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.\n\nDie auf dieser Webseite enthaltenen Texte und Bilder unterliegen den Regelungen des Urheberrechtes in der jeweils gültigen Fassung.\n\nDiese Seite setzt keine Cookies in Ihrem Browser und leitet auch nicht im Hintergrund auf andere Webseiten weiter.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 50),
          Text(
            'Haftung für Links',
            style: CustomTextTheme.titleLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Verweise und Links auf Webseiten Dritter liegen ausserhalb meines Verantwortungsbereichs. Es wird jegliche Verantwortung für solche Webseiten abgelehnt. Der Zugriff und die Nutzung solcher Webseiten erfolgen auf eigene Gefahr des Nutzers.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 50),
          Text(
            'Datenschutz',
            style: CustomTextTheme.titleLarge,
          ),
          SizedBox(height: 15),
          Text(
            'Kontaktformular',
            style: CustomTextTheme.displayLarge,
          ),
          Text(
            'Daten auf der Website können nur von mir und vom Datenbankadministrator eingesehen werden.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 35),
          Text(
            'Andere Daten',
            style: CustomTextTheme.displayLarge,
          ),
          /*Text(
          'Gestützt auf das Datenschutzgesetzes des Bundes hat jede Person Anspruch auf Schutz ihrer Privatsphäre und Schutz vor Missbrauch ihrer persönlichen Daten. Ich halte diese Bestimmungen ein und persönliche Daten werden streng vertraulich behandelt und nicht an Dritte verkauft oder weiter gegeben.\nAlle im Zusammenhang mit Ihrer Kontaktaufnahme von mir erfassten Daten werden ausschließlich von  Brigitte Müller zum Zwecke und im Rahmen der von Ihnen gewünschten Leistung genutzt.\nDie Preisgabe dieser Daten durch den Nutzer erfolgt ausschließlich freiwillig. Eine Weitergabe an Dritte ist ausgeschlossen. Eine Anonymisierung der Daten durch den Nutzer ist gestattet, soweit die Anonymisierung für die Zusammenarbeit nicht hinderlich ist.\n\nVerantwortlich im Sinne des Datenschutzrechts sind die oben im Impressum und Kontakt Genannten.',
          style: isSmallScreen
              ? CustomTextTheme.bodySmall
              : CustomTextTheme.bodyLarge,
        ),*/
          Text(
            'Gestützt auf das Datenschutzgesetz des Bundes hat jede Person Anspruch auf Schutz ihrer Privatsphäre und Schutz vor Missbrauch ihrer persönlichen Daten. Ich halte diese Bestimmungen ein und persönliche Daten werden streng vertraulich behandelt und nicht an Dritte verkauft oder weitergegeben.\n\nEs werden nur solche Daten bearbeitet, die mit der therapeutischen Behandlung im Zusammenhang stehen oder die für eine Information über allfällige Angebote relevant sind. Es handelt sich dabei ausschliesslich um Daten, die ich mit Ihrem Einverständnis aufgenommen habe, die Sie mir haben zukommen lassen oder die in öffentlich zugänglichen Verzeichnissen (Telefonbuch etc.) zu finden sind. Dies können allgemeine Daten zu Ihrer Person (Name, Anschrift, Telefonnummer etc.), Angaben zu Ihrer Gesundheit/zum Krankheitsverlauf, bereits gestellte Diagnosen und gegebenenfalls weitere Daten sein, welche Sie mir aufgrund der Behandlung übermittelt haben (Patientendossiers).\nGesammelt, gespeichert und bearbeitet werden diese Daten ausschliesslich in Ihrem Patientendossier, insbesondere in der für die Fakturierung gemäss Tarif 590 notwendigen Abrechnungsprogramm. In diesen beiden Aufbewahrungsorten sind sämtliche an Ihren Daten vorgenommenen Bearbeitungsschritte Inklusive der verantwortlichen Personen nachvollziehbar.\n\nWeiteren Personen oder Institutionen (Versicherungen etc.) werden Ihre Daten oder Teile davon, ausschliesslich mit Ihrem expliziten Einverständnis zugänglich gemacht. Als Ausnahmen gelten richterliche Anordnungen.\n\nWo nicht kantonale oder andere gesetzliche Regelungen anders bestimmen, werden Ihre von mir gesammelten Daten zwanzig Jahre nach Ihrer letzten Konsultation in meiner Praxis gelöscht.\n\nVerantwortlich für sämtliche Fragen, die im Zusammenhang mit der Verarbeitung Ihrer personenbezogenen Daten und Wahrnehmung Ihrer Rechte stehen, bin ich für Sie zuständig.',
            style: CustomTextTheme.bodyLarge,
          ),
          SizedBox(height: 15),
        ],
      ),
    ];
  }

  static List<Widget> getContentSmallDevice(
      AnimationController animationController, BuildContext context) {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wirbelsäulen-Basis-Ausgleich - WBA nach Rolf Ott',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Beim Wirbelsäulen-Basis-Ausgleich werden eine Reihe verschiedener Behandlungsformen miteinander kombiniert:\nOhr-Tastbefund, Akupunkt-Massage, Korrektur des Beckenschiefstandes. Ebenso verschiedene manuelle Techniken wie:\nMassage-, Dehn- und Bewegungstechniken.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Auf dem patentierten Schwingkissen wird die Muskulatur mit ihren Faszien durch Schwing- und Bewegungstechniken entlastet. Die Gelenke werden sanft mobilisiert und die Regeneration der Knorpel und Bandscheiben können so unterstützt werden.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Position des Kreuzbeins und des Beckens spielt dabei eine entscheidende Rolle für die Statik des gesamten Skeletts.\nSo kann ein Beckenschiefstand über lange Zeit zu einer Fehlhaltung führen und eine Abnützung der Gelenke zur Folge haben.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displaySmall,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Chronische und akute Rückenbeschwerden',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Ischialgien',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Blockaden an der Hals-, Brust- und Lendenwirbelsäule',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Kopfschmerzen, Migräne, Schwindel',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Beckenfehlstellungen mit Beinlängen-Differenzen',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          DropShadow(
            offset: CustomImageData.getOffset(),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                image: ResizeImage(
                  const AssetImage('images/schwingkissen.jpeg'),
                  width: (MediaQuery.of(context).size.width / 1.2).round(),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wirbelsäulen-Therapie nach Dorn',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Dorn-Methode dient der sanften Behandlung von Wirbel- und Gelenkblockaden.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Verschobene Wirbel und Gelenke werden in sanften Bewegungen in ihre ursprüngliche Position zurückgeführt.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Durch eine vorhergehende Massage wird die Muskulatur zuvor entspannt und gelockert, so können auch bestehende Beckenschiefstände ausgeglichen werden.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displaySmall,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Rücken- und  Halsschmerzen',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Hals- und Nackenbeschwerden',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Kreuzbeschwerden',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Beckenschiefstand',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Halskehre',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Kopfschmerzen',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Tinnitus',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [*/
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DropShadow(
              offset: CustomImageData.getOffset(),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/dorn_1.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.2).round(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DropShadow(
              offset: CustomImageData.getOffset(),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/dorn_2.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.2).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rückenmuskel-Therapie nach Breuss',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Breuss-Massage, auch „Verjüngungskur für die Bandscheibe“ genannt,\nist eine manuelle - energetische Rückenmassage, die körperliche Blockaden löst.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Mit der Breuss-Massage wird durch sanftes Dehnen der Wirbelsäule Raum für die Bandscheiben geschaffen. So hilft die Johanniskrautöl-Anwendung den Bandscheiben, in dem nun entlasteten Zustand, zu regenerieren.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displaySmall,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Bandscheibenbeschwerden',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Verspannungen der Rückenmuskulatur',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Blockaden der Wirbelsäule',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DropShadow(
              offset: CustomImageData.getOffset(),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/breuss.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.2).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Schmerz-Therapie nach Liebscher & Bracht',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Liebscher & Bracht gehen davon aus, dass eine erhöhte Spannung in den Muskeln und Faszien zu vielen körperlichen Schmerzen führt.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Ursachen sind meist engwinklige Bewegungen und einwinklige  Positionen, die über viele Jahre die Muskulatur und die Faszien verkürzen und verfilzen und den Verschleiß der Gelenke durch die entstehenden Spannungen erheblich erhöhen.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Therapie besteht aus drei Techniken:\nDrücken, Rollen und Dehnen.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displaySmall,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'akute und chronische Schmerzzustände',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Bewegungsschmerzen',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Bewegungseinschränkungen',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          DropShadow(
            offset: CustomImageData.getOffset(),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                image: ResizeImage(
                  const AssetImage('images/schmerztherapie_cut.jpg'),
                  width: (MediaQuery.of(context).size.width / 1.2).round(),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Engpassdehnungen nach Liebscher & Bracht',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Engwinklige Bewegungen und einseitige Positionen führen über die Jahre zu Verkürzungen der Muskeln und Faszien.\nDie daraus entstehenden Spannungen führen wiederum zu einem erhöhten Verschleiß der Gelenke.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Um dieser Entwicklung entgegenzuwirken und begleitende Bewegungseinschränkungen und Bewegungsschmerzen nach und nach zu reduzieren oder vorzubeugen, biete ich kleine Gruppenstunden.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'So kann jeder, der sich zu Hause weder motivieren noch anleiten mag, sich bei uns in einer gemütlichen Runde einfinden, um für sich mehr Bewegungsfreiheit aufzubauen oder zu erhalten.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die angebotene Technik ist ein Dehnen und eine Stärkung der verschiedensten Muskeln und Faszien, je nach Bedarf.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Die Gruppenstunden sind jeweils am Dienstag und Donnerstag.\nZwischen 18.30 - 20.00 Uhr',
            style: CustomTextTheme.bodySmall,
          ),
          const Text(
            'Anmeldung unter Tel.: ',
            style: CustomTextTheme.bodySmall,
          ),
          const Row(
            children: [
              SelectableText(
                '079 728 16 56',
                style: CustomTextTheme.bodySmall,
              ),
              Text(
                ' oder über Kontaktformular',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Text(
            'Maximal 7 Personen - 25 CHF/p.P.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text('Mitnehmen:', style: CustomTextTheme.displaySmall),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'eine Decke für die Gymnastikmatte',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Antirutschsocken oder ähnliches',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(height: 18),
          DropShadow(
            offset: CustomImageData.getOffset(),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                image: ResizeImage(
                  const AssetImage('images/engpassdehnung.jpeg'),
                  width: (MediaQuery.of(context).size.width / 1.2).round(),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'RESET – Kieferentspannung / Kiefergelenks-Balancierung',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Ein sanftes System nach Philip Rafferty, welches nicht nur die Kiefermuskeln entspannt, sondern auch zu einem positiven Einfluss auf den ganzen Organismus führt.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Das Kiefergelenk mit der Kaumuskulatur stellen zusammen eines der wichtigsten Stressorgane dar.\nEs ist aus der Osteopathie und der Cranio Therapie bekannt, dass das Kiefergelenk einen starken Einfluss auf beinahe alle Körperfunktionen hat, wie Muskulatur, Skelett, Nerven- und Meridiansystem, Stoffwechsel und sogar auf den Wasserhaushalt.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displaySmall,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Verspannungen',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Kieferprobleme',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Nasen- und Nebenhöhlenprobleme',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Kopfschmerzen / Migräne',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Schlafstörungen',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Tinnitus, nachlassendes Gehör',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DropShadow(
              offset: CustomImageData.getOffset(),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/reset_kiefer.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.2).round(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Raindrop Massage nach Gary Young',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Raindrop Technik entspannt, richtet auf und wirkt zugleich unterstützend auf das Immunsystem.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Es ist eine Kombination von Pflanzenwirkstoffen und der Federstreich-Technik der Lakota Indianer.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            '9-10 hochwertige, ätherische Öle schaffen wieder Ordnung in Gehirn und den Organen und führen zu einer Entgiftung des Bindegewebes.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Raindrop Technik ist eine einzigartige Entspannungsanwendung\nfür Körper und Geist.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Und die Wirkung der ätherischen Öle können bis zu einer Woche nachwirken.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 18),
          DropShadow(
            offset: CustomImageData.getOffset(),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                image: ResizeImage(
                  const AssetImage('images/raindrop_massage.jpeg'),
                  width: (MediaQuery.of(context).size.width / 1.2).round(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Theme(
            data: ThemeData().copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              textColor: Colors.black,
              backgroundColor: Colors.white.withOpacity(0.4),
              collapsedBackgroundColor: Colors.white.withOpacity(0.4),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,

              ///trailing: const SizedBox(),
              tilePadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              childrenPadding:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              iconColor: Colors.black87,
              collapsedIconColor: Colors.black87,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              title: const Text(
                'Wirkungen der ätherischen Öle:',
                style: CustomTextTheme.bodySmall,
              ),
              /*Padding(
                    padding: const EdgeInsets.only(bottom: 10 /*, left: 10*/),
                    child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 0.5)
                          .animate(animationController),
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                    ),
                  ),*/
              children: const [
                Text(
                  'Valor:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'Mut, Aufrichtung, Selbstvertrauen, Hexenschuss, Rückenschmerzen, richtet Wirbelsäule auf (der Chiropraktiker in Flasche)',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Oregano:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'aktivierend, reinigend, sehr wirksames antimikrobielles Öl, stark im Entgiften, Knochenaufbau, Sicherheitsgefühl',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Thymian:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'aktivierend, reinigend, Immunsystem, wärmend, kräftigend, gegen Entzündungen, unterstützt Heilungsprozess',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Basilikum:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'aktivierend, befreiend, entspannt Muskeln, Blutgefässe, Organe, stärkt Nerven und Gelenke, bei Entzündungen, lindert mentale Erschöpfung, Spannungskopfschmerzen',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Zypresse:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'hilft alles loszulassen und sich für Neues zu öffnen, Kreislauf, Durchblutung, stärkt Blutgefässes, gegen Ödeme, fördert Lymphfluss',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Wintergrün:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'schmerzlindernd, entzündungshemmend (chemisch ähnlich wie Aspirin), regt Ausschüttung des körpereigenen Kortisons an, reinigt die Zell-Rezeptoren, stark entgiftend und entschlackend',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Majoran:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'sehr entspannend körperlich und emotional, Muskelverspannungen, Zerrungen, Prellungen, Sehnen, Bänder, Hormonhaushalt, beruhigend auf Nervensystem, bei Migräne',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Aroma Siez:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'Entspannt Muskeln, Nerven, Gelenke, Sehnen, Bänder, Krampflösend, Kopfschmerzen',
                  style: CustomTextTheme.oeleSmall,
                ),
                SizedBox(height: 10),
                Text(
                  'Pfefferminz:',
                  style: CustomTextTheme.oeleTitleSmall,
                ),
                Text(
                  'stärkend, Verdauungs-, Atmungs- und Nervensystem, Gelenke, Muskeln, fördert Konzentration, entgiftet Leber, verstärkt die Wirkung der anderen Öle! SEHR KÜHLEND!',
                  style: CustomTextTheme.oeleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Schröpf-Behandlung',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Die Methode des Schröpfens ist bereits mehr als 5000 Jahre alt und findet noch immer Anwendung in den verschiedensten Kulturen.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Ziel des Schröpfens ist es, die Selbstheilungskräfte des Organismus anzuregen.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Da die Organe mit der Körperoberfläche verbunden sind, können durch das Schröpfen auch auf innere erkrankte Organe eingewirkt werden.\nDurch die verstärkte Durchblutung an den Schröpfstellen wird der Stoffwechsel angeregt und so können Giftstoffe schneller ausgeschieden werden.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Diese Methode lässt sich auch gut mit einer Massagekombinieren.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Einsatzbereiche',
            style: CustomTextTheme.displaySmall,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Verspannungen, vor allem Rücken- und Gesässbereich',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Entzündungen',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Gelenkschmerzen',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Kopfschmerzen',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Blutdruckproblemen (Hypertonie oder Hypotonie)',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Text(
                'Bindegewebsschwäche (Cellulite)',
                style: CustomTextTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(height: 18),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [*/
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DropShadow(
              offset: CustomImageData.getOffset(),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/schroepfen_1.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.2).round(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DropShadow(
              offset: CustomImageData.getOffset(),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/schroepfen_2.jpeg'),
                    width: (MediaQuery.of(context).size.width / 1.2).round(),
                  ),
                ),
              ),
            ),
          ),
          /*],
          ),*/
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kartenlegung nach Dr. Chuck Spezzano',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Viele Ursachen des Schmerzes beginnen im Geiste und spiegeln uns oftmals die Beziehungen zu uns selbst und zu unserem Umfeld wider.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Mit den Symbolkarten des Psychologen Dr. Chuck Spezzano können wir diese Verbindungen und der Ursache gern nachgehen.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Beziehungsbetrachtungen von',
            style: CustomTextTheme.bodySmall,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Gesundheit',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Mutter-Kind',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Familie',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Partnerschaft',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-  ', style: CustomTextTheme.bodySmall),
              Expanded(
                child: Text(
                  'Beruf',
                  style: CustomTextTheme.bodySmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          DropShadow(
            offset: CustomImageData.getOffset(),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HeroImageFullScreen(isSmallScreen: true);
                    }));
                  },
                  child: Hero(
                    tag: 'kartenlegungSmallScreen',
                    child: Image(
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      image: ResizeImage(
                        const AssetImage('images/kartenlegung.jpeg'),
                        width:
                            (MediaQuery.of(context).size.width / 1.2).round(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dipl. Therapeutin Brigitte Müller\ngeboren 1969 in Wettingen',
            style: CustomTextTheme.titleSmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Meine Leidenschaft findet sich im Teilen der Freude, seinen Körper in Einklang führen zu können.\nNicht nur für eine bessere Gesundheit, sondern für ein freudiges Miteinander, in Balance und Achtsamkeit, zu sich selbst.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Hierzu habe ich über viele Jahre verschiedenste Ausbildungen und Kurse absolviert, um Dir ein individuelles und passendes Angebot, nicht nur innerhalb einer Massage und Rückentherapie, anbieten zu können.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 25),
          const Text(
            'Ich freue mich auf Dich.',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 15),
          const Text(
            'Brigitte Müller',
            style: CustomTextTheme.bodySmall,
          ),
          const SizedBox(height: 18),
          Center(
            child: DropShadow(
              offset: CustomImageData.getOffset(),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: ResizeImage(
                    const AssetImage('images/brigitte.jpeg'),
                    height: 250,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Preisanpassung ab 1.5.2025',
            style: CustomTextTheme.titleSmall,
          ),
          SizedBox(height: 15),
          Text(
            'Massage/Therapie für 30 Minuten     65.00 CHF',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 15),
          Text(
            'Massage/Therapie für 60 Minuten    130.00 CHF',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 15),
          Text(
            'Massage/Therapie für 75 Minuten    162.50 CHF',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 15),
          Text(
            'Für die Raindrop-Massage kommen 20 CHF für die ätherischen Öle dazu.',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 15),
          Text(
            'Falls eine Zusatzversicherung für Alternativmedizin besteht,\nwerden Teile meiner Behandlungen durch einige Krankenkassen erstattet. Ich bitte Sie jedoch vorgängig, sich bei der Krankenkasse für die Kostenübernahme der entsprechenden Behandlungsmethode zu erkundigen.',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 35),
          Text(
            'Ich danke Euch für Euer Vertrauen und freue mich, Euch auch weiterhin in meiner Praxis begrüssen zu dürfen.',
            style: CustomTextTheme.bodySmall,
          ),
        ],
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Impressum',
            style: CustomTextTheme.titleSmall,
          ),
          SizedBox(height: 15),
          SelectableText(
            'Gesundheitspraxis Rückentherapie\nBrigitte Müller\nAlberich Zwyssigstrasse 36\n5430 Wettingen\ninfo@rueck-grad.ch\n+41 79 728 16 56',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 35),
          Text(
            'Haftungsausschluss',
            style: CustomTextTheme.titleSmall,
          ),
          SizedBox(height: 15),
          Text(
            'Der Autor übernimmt keinerlei Gewähr hinsichtlich der inhaltlichen Richtigkeit, Genauigkeit, Aktualität, Zuverlässigkeit und Vollständigkeit der Informationen. Haftungsansprüche gegen den Autor wegen Schäden materieller oder immaterieller Art, welche aus dem Zugriff oder der Nutzung bzw. Nichtnutzung der veröffentlichten Informationen, durch Missbrauch der Verbindung oder durch technische Störungen entstanden sind, werden ausgeschlossen.\nAlle Angebote sind unverbindlich. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.\n\nDie auf dieser Webseite enthaltenen Texte und Bilder unterliegen den Regelungen des Urheberrechtes in der jeweils gültigen Fassung.\n\nDiese Seite setzt keine Cookies in Ihrem Browser und leitet auch nicht im Hintergrund auf andere Webseiten weiter.',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 35),
          Text(
            'Haftung für Links',
            style: CustomTextTheme.titleSmall,
          ),
          SizedBox(height: 15),
          Text(
            'Verweise und Links auf Webseiten Dritter liegen ausserhalb meines Verantwortungsbereichs. Es wird jegliche Verantwortung für solche Webseiten abgelehnt. Der Zugriff und die Nutzung solcher Webseiten erfolgen auf eigene Gefahr des Nutzers.',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 35),
          Text(
            'Datenschutz',
            style: CustomTextTheme.titleSmall,
          ),
          SizedBox(height: 15),
          Text(
            'Kontaktformular',
            style: CustomTextTheme.displaySmall,
          ),
          Text(
            'Daten auf der Website können nur von mir und vom Datenbankadministrator eingesehen werden.',
            style: CustomTextTheme.bodySmall,
          ),
          SizedBox(height: 35),
          Text(
            'Andere Daten',
            style: CustomTextTheme.displaySmall,
          ),
          /*Text(
          'Gestützt auf das Datenschutzgesetzes des Bundes hat jede Person Anspruch auf Schutz ihrer Privatsphäre und Schutz vor Missbrauch ihrer persönlichen Daten. Ich halte diese Bestimmungen ein und persönliche Daten werden streng vertraulich behandelt und nicht an Dritte verkauft oder weiter gegeben.\nAlle im Zusammenhang mit Ihrer Kontaktaufnahme von mir erfassten Daten werden ausschließlich von  Brigitte Müller zum Zwecke und im Rahmen der von Ihnen gewünschten Leistung genutzt.\nDie Preisgabe dieser Daten durch den Nutzer erfolgt ausschließlich freiwillig. Eine Weitergabe an Dritte ist ausgeschlossen. Eine Anonymisierung der Daten durch den Nutzer ist gestattet, soweit die Anonymisierung für die Zusammenarbeit nicht hinderlich ist.\n\nVerantwortlich im Sinne des Datenschutzrechts sind die oben im Impressum und Kontakt Genannten.',
          style: isSmallScreen
              ? CustomTextTheme.bodySmall
              : CustomTextTheme.bodyLarge,
        ),*/
          Text(
            'Gestützt auf das Datenschutzgesetz des Bundes hat jede Person Anspruch auf Schutz ihrer Privatsphäre und Schutz vor Missbrauch ihrer persönlichen Daten. Ich halte diese Bestimmungen ein und persönliche Daten werden streng vertraulich behandelt und nicht an Dritte verkauft oder weitergegeben.\n\nEs werden nur solche Daten bearbeitet, die mit der therapeutischen Behandlung im Zusammenhang stehen oder die für eine Information über allfällige Angebote relevant sind. Es handelt sich dabei ausschliesslich um Daten, die ich mit Ihrem Einverständnis aufgenommen habe, die Sie mir haben zukommen lassen oder die in öffentlich zugänglichen Verzeichnissen (Telefonbuch etc.) zu finden sind. Dies können allgemeine Daten zu Ihrer Person (Name, Anschrift, Telefonnummer etc.), Angaben zu Ihrer Gesundheit/zum Krankheitsverlauf, bereits gestellte Diagnosen und gegebenenfalls weitere Daten sein, welche Sie mir aufgrund der Behandlung übermittelt haben (Patientendossiers).\nGesammelt, gespeichert und bearbeitet werden diese Daten ausschliesslich in Ihrem Patientendossier, insbesondere in der für die Fakturierung gemäss Tarif 590 notwendigen Abrechnungsprogramm. In diesen beiden Aufbewahrungsorten sind sämtliche an Ihren Daten vorgenommenen Bearbeitungsschritte Inklusive der verantwortlichen Personen nachvollziehbar.\n\nWeiteren Personen oder Institutionen (Versicherungen etc.) werden Ihre Daten oder Teile davon, ausschliesslich mit Ihrem expliziten Einverständnis zugänglich gemacht. Als Ausnahmen gelten richterliche Anordnungen.\n\nWo nicht kantonale oder andere gesetzliche Regelungen anders bestimmen, werden Ihre von mir gesammelten Daten zwanzig Jahre nach Ihrer letzten Konsultation in meiner Praxis gelöscht.\n\nVerantwortlich für sämtliche Fragen, die im Zusammenhang mit der Verarbeitung Ihrer personenbezogenen Daten und Wahrnehmung Ihrer Rechte stehen, bin ich für Sie zuständig.',
            style: CustomTextTheme.bodySmall,
          ),
        ],
      ),
    ];
  }
}
