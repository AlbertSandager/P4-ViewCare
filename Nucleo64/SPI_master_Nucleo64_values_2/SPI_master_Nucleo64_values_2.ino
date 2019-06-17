#include "SPI.h" // necessary library
int ss = 10; // using digital pin 10 for SPI slave select

long data[801] = {0,1.07853900888711,0.157073173118207,-0.764402351663898,0.314107590781283,1.39259815759069,0.471064507096427,-0.450498200875542,0.627905195293133,1.70626985931167,0.78459095727845,-0.137136342020766,0.941083133185142,2.0192445579505,1.09734311091045,0.175373974578376,1.25333233564304,2.33121338526552,1.40901231937583,0.48672433896923,1.56434465040231,2.64186846568863,1.7192910027941,0.796607485931925,1.87381314585724,2.95090322016128,2.02787295356512,1.10471759821306,2.18143241396542,3.25801266869104,2.33445363855906,1.41075060833039,2.48689887164855,3.56289373132997,2.63873049965373,1.71440449865074,2.78991106039229,3.86524552727798,2.94040325232305,2.01537959944496,3.09016994374947,4.16476967181586,3.23917418198149,2.31337888462571,3.3873792024529,4.46117057077493,3.53474843779258,2.60810826487642,3.68124552684678,4.75415571225283,3.8268343236509,2.89927687788188,3.97147890634781,5.04343595528745,4.11514358605109,3.18659737537428,4.25779291565072,5.32872581520414,4.39939169855915,3.46978620671121,4.53990499739546,5.60974374535462,4.67929814260574,3.74856389870595,4.81753674101715,5.88621241496955,4.95458668432408,4.02265533143373,5.09041415750372,6.15785898285047,5.2249856471595,4.29179000974191,5.35826794978996,6.42441536663119,5.49022817998133,4.55570233019602,5.62083377852129,6.68561850734264,5.75005252043279,4.81413184319831,5.87785252292473,6.94121062902039,6.00420225325886,5.06682351002,6.12907053652977,7.19093949309834,6.25242656335706,5.31352795449378,6.37423989748688,7.43455864733779,6.49448048330187,5.55400170911794,6.61311865323651,7.671827669046,6.73012513509776,5.78800745532942,6.84547105928688,7.90251240234437,6.95912796592316,6.01531425770856,7.07106781186548,8.12638518925205,7.1812629776319,6.23569779188449,7.28968627421412,8.34322509435686,7.39631094978613,6.44894056591622,7.50111069630458,8.55281812285184,7.60405965600033,6.65483213493088,7.70513242775788,8.75495743172234,7.80430407338331,6.85316930880745,7.9015501237569,8.9494435338751,7.99684658487092,7.04375635270084,8.09016994374945,9.13608449500787,8.18149717425027,7.2264051802086,8.2708057427456,9.31469612302545,8.35807361368273,7.40093553898942,8.44327925502014,9.48510214981504,8.52640164354094,7.56717518865049,8.60742027003944,9.64713440520155,8.68631514438193,7.72496007072797,8.76306680043864,9.80063298291132,8.83765630088694,7.87413447059283,8.91006524188366,9.94544639838025,8.98027575760615,8.01455117112246,9.04827052466019,10.0814317382508,9.1140327663545,8.14607159798613,9.17754625683978,10.2084548014103,9.23879532511291,8.26856595640121,9.29776485888249,10.3263902314309,9.35444030829871,8.38191335922484,9.40880768954224,10.4351216402819,9.46085358827548,8.48600194625505,9.51056516295152,10.53454172319,9.55793014798332,8.58072899462319,9.6029368567694,10.6245523645365,9.64557418457797,8.66600102016907,9.68583161128631,10.7050647346854,9.72369920397677,8.74173386969849,9.75916761938746,10.7759993776479,9.79222810621769,8.8078528040323,9.82287250728685,10.8372862894954,9.85109326154779,8.86429257176495,9.87688340595132,10.888864987445,9.90023657716559,8.91099747365975,9.92114701314475,10.9306845695493,9.93960955455183,8.94792141761726,9.95561964603075,10.9627037649294,9.96917333733128,8.9750279641627,9.9802672842827,10.9848909745054,9.98889874961972,8.99229036240723,9.99506560365728,10.99722430218,9.99876632481665,8.9996915764479,10,10.9996915764479,9.99876632481661,8.99722430218,9.9950656036573,10.9922903624072,9.98889874961973,8.98489097450538,9.98026728428273,10.9750279641627,9.96917333733133,8.96270376492941,9.95561964603074,10.9479214176173,9.93960955455181,8.93068456954926,9.92114701314475,10.9109974736597,9.90023657716561,8.88886498744505,9.87688340595133,10.864292571765,9.85109326154774,8.83728628949536,9.82287250728687,10.8078528040323,9.79222810621768,8.77599937764791,9.75916761938744,10.7417338696985,9.72369920397681,8.70506473468543,9.68583161128631,10.6660010201691,9.64557418457799,8.62455236453647,9.60293685676941,10.5807289946232,9.55793014798333,8.53454172319001,9.51056516295149,10.486001946255,9.46085358827551,8.43512164028194,9.40880768954219,10.3819133592248,9.35444030829869,8.32639023143094,9.29776485888248,10.2685659564012,9.23879532511291,8.20845480141026,9.17754625683976,10.1460715979861,9.11403276635452,8.08143173825081,9.04827052466018,10.0145511711225,8.98027575760618,7.94544639838025,8.91006524188364,9.87413447059283,8.83765630088698,7.80063298291132,8.76306680043863,9.72496007072797,8.68631514438192,7.64713440520155,8.60742027003941,9.5671751886505,8.52640164354096,7.48510214981504,8.44327925502016,9.40093553898942,8.3580736136827,7.31469612302545,8.27080574274561,9.2264051802086,8.18149717425026,7.13608449500787,8.09016994374944,9.04375635270084,7.99684658487089,6.9494435338751,7.90155012375691,8.85316930880745,7.8043040733833,6.75495743172234,7.70513242775787,8.65483213493088,7.6040596560004,6.55281812285184,7.5011106963045,8.44894056591622,7.39631094978615,6.34322509435686,7.28968627421406,8.2356977918845,7.18126297763196,6.12638518925205,7.07106781186539,8.01531425770856,6.95912796592318,5.90251240234437,6.84547105928684,7.78800745532942,6.73012513509779,5.671827669046,6.61311865323645,7.55400170911794,6.49448048330192,5.43455864733779,6.37423989748686,7.31352795449378,6.2524265633571,5.19093949309834,6.12907053652971,7.06682351002,6.00420225325891,4.94121062902039,5.87785252292471,6.81413184319831,5.75005252043282,4.68561850734264,5.62083377852126,6.55570233019602,5.49022817998137,4.42441536663119,5.3582679497899,6.29179000974191,5.22498564715956,4.15785898285048,5.09041415750374,6.02265533143372,4.95458668432406,3.88621241496955,4.81753674101716,5.74856389870595,4.67929814260574,3.60974374535462,4.53990499739546,5.46978620671121,4.39939169855917,3.32872581520414,4.25779291565069,5.18659737537428,4.11514358605113,3.04343595528745,3.97147890634775,4.89927687788188,3.82683432365085,2.75415571225283,3.6812455268467,4.60810826487642,3.53474843779266,2.46117057077493,3.38737920245282,4.31337888462571,3.23917418198161,2.16476967181586,3.09016994374935,4.01537959944496,2.94040325232317,1.86524552727799,2.78991106039227,3.71440449865075,2.63873049965377,1.56289373132997,2.4868988716485,3.41075060833039,2.33445363855912,1.25801266869104,2.18143241396536,3.10471759821306,2.02787295356521,0.950903220161286,1.87381314585715,2.79660748593193,1.7192910027942,0.64186846568863,1.56434465040231,2.48672433896923,1.40901231937584,0.331213385265526,1.25333233564302,2.17537397457838,1.09734311091049,0.0192445579505003,0.941083133185098,1.86286365797923,0.784590957278506,-0.293730140688332,0.627905195293069,1.54950179912446,0.471064507096503,-0.607401842409315,0.314107590781194,1.2355976483361,0.157073173118192,-0.921460991112886,5.1534202466043e-15,0.921460991112884,-0.157073173118202,-1.2355976483361,-0.314107590781302,0.607401842409313,-0.471064507096399,-1.54950179912446,-0.627905195293173,0.293730140688334,-0.784590957278403,-1.86286365797924,-0.941083133185206,-0.0192445579505023,-1.0973431109105,-2.17537397457838,-1.25333233564301,-0.331213385265524,-1.40901231937585,-2.48672433896923,-1.5643446504023,-0.641868465688632,-1.7192910027941,-2.79660748593193,-1.87381314585726,-0.950903220161284,-2.0278729535651,-3.10471759821306,-2.18143241396546,-1.25801266869104,-2.33445363855901,-3.41075060833039,-2.48689887164849,-1.56289373132997,-2.63873049965378,-3.71440449865074,-2.78991106039226,-1.86524552727799,-2.94040325232307,-4.01537959944496,-3.09016994374946,-2.16476967181586,-3.2391741819815,-4.31337888462571,-3.38737920245292,-2.46117057077493,-3.53474843779256,-4.60810826487642,-3.6812455268467,-2.75415571225283,-3.82683432365086,-4.89927687788188,-3.97147890634785,-3.04343595528745,-4.11514358605103,-5.18659737537428,-4.2577929156508,-3.32872581520414,-4.39939169855907,-5.46978620671121,-4.53990499739556,-3.60974374535462,-4.67929814260575,-5.74856389870595,-4.81753674101715,-3.88621241496955,-4.95458668432406,-6.02265533143373,-5.09041415750373,-4.15785898285047,-5.22498564715946,-6.29179000974191,-5.35826794979001,-4.42441536663119,-5.49022817998126,-6.55570233019602,-5.62083377852137,-4.68561850734264,-5.75005252043271,-6.81413184319831,-5.87785252292471,-4.94121062902039,-6.00420225325886,-7.06682351002,-6.12907053652976,-5.19093949309834,-6.25242656335705,-7.31352795449378,-6.37423989748692,-5.43455864733779,-6.49448048330181,-7.55400170911794,-6.61311865323656,-5.671827669046,-6.73012513509769,-7.78800745532942,-6.84547105928683,-5.90251240234437,-6.95912796592319,-8.01531425770856,-7.07106781186555,-6.12638518925206,-7.1812629776318,-8.2356977918845,-7.28968627421422,-6.34322509435686,-7.39631094978598,-8.44894056591623,-7.50111069630472,-6.55281812285184,-7.60405965600029,-8.65483213493088,-7.70513242775792,-6.75495743172234,-7.80430407338326,-8.85316930880745,-7.90155012375696,-6.9494435338751,-7.99684658487084,-9.04375635270085,-8.09016994374955,-7.13608449500787,-8.18149717425015,-9.2264051802086,-8.27080574274571,-7.31469612302545,-8.35807361368271,-9.40093553898942,-8.44327925502016,-7.48510214981504,-8.52640164354091,-9.56717518865049,-8.60742027003946,-7.64713440520155,-8.68631514438188,-9.72496007072797,-8.76306680043868,-7.80063298291132,-8.83765630088688,-9.87413447059283,-8.91006524188375,-7.94544639838025,-8.98027575760607,-10.0145511711225,-9.04827052466018,-8.08143173825081,-9.11403276635447,-10.1460715979861,-9.17754625683981,-8.20845480141026,-9.23879532511286,-10.2685659564012,-9.29776485888253,-8.32639023143094,-9.35444030829864,-10.3819133592248,-9.40880768954229,-8.43512164028194,-9.4608535882754,-10.486001946255,-9.5105651629516,-8.53454172319001,-9.55793014798334,-10.5807289946232,-9.6029368567694,-8.62455236453647,-9.645574184578,-10.6660010201691,-9.68583161128631,-8.70506473468543,-9.72369920397676,-10.7417338696985,-9.75916761938749,-8.77599937764791,-9.79222810621763,-10.8078528040323,-9.82287250728692,-8.83728628949536,-9.85109326154781,-10.864292571765,-9.87688340595132,-8.88886498744505,-9.90023657716562,-10.9109974736597,-9.92114701314474,-8.93068456954926,-9.93960955455182,-10.9479214176173,-9.95561964603079,-8.96270376492941,-9.96917333733128,-10.9750279641627,-9.98026728428272,-8.98489097450538,-9.98889874961968,-10.9922903624072,-9.99506560365723,-8.99722430218,-9.99876632481668,-10.9996915764479,-9.99999999999994,-8.9996915764479,-9.99876632481666,-10.99722430218,-9.99506560365727,-8.99229036240723,-9.98889874961973,-10.9848909745054,-9.9802672842827,-8.9750279641627,-9.96917333733129,-10.9627037649294,-9.95561964603069,-8.94792141761726,-9.9396095545519,-10.9306845695493,-9.92114701314469,-8.91099747365975,-9.90023657716565,-10.888864987445,-9.87688340595131,-8.86429257176495,-9.8510932615478,-10.8372862894954,-9.82287250728684,-8.8078528040323,-9.79222810621758,-10.7759993776479,-9.75916761938756,-8.74173386969849,-9.72369920397667,-10.7050647346854,-9.68583161128642,-8.66600102016907,-9.64557418457786,-10.6245523645365,-9.60293685676956,-8.58072899462319,-9.55793014798327,-10.53454172319,-9.51056516295158,-8.48600194625505,-9.4608535882754,-10.4351216402819,-9.40880768954232,-8.38191335922484,-9.3544403082986,-10.3263902314309,-9.29776485888259,-8.26856595640121,-9.23879532511277,-10.2084548014103,-9.17754625683991,-8.14607159798614,-9.11403276635445,-10.0814317382508,-9.04827052466032,-8.01455117112246,-8.98027575760613,-9.94544639838025,-8.91006524188383,-7.87413447059283,-8.83765630088689,-9.80063298291132,-8.76306680043857,-7.72496007072797,-8.68631514438184,-9.64713440520155,-8.6074202700394,-7.5671751886505,-8.52640164354083,-9.48510214981504,-8.44327925502013,-7.40093553898942,-8.35807361368259,-9.31469612302545,-8.27080574274562,-7.2264051802086,-8.18149717425011,-9.13608449500787,-8.0901699437495,-7.04375635270084,-7.99684658487098,-8.9494435338751,-7.90155012375695,-6.85316930880745,-7.80430407338335,-8.75495743172234,-7.70513242775796,-6.65483213493088,-7.60405965600034,-8.55281812285183,-7.50111069630469,-6.44894056591622,-7.39631094978611,-8.34322509435685,-7.28968627421423,-6.23569779188449,-7.18126297763188,-8.12638518925205,-7.07106781186538,-6.01531425770856,-6.95912796592311,-7.90251240234437,-6.84547105928681,-5.78800745532942,-6.73012513509768,-7.671827669046,-6.61311865323647,-5.55400170911793,-6.49448048330176,-7.43455864733778,-6.37423989748687,-5.31352795449377,-6.25242656335695,-7.19093949309834,-6.12907053652975,-5.06682351001999,-6.00420225325894,-6.94121062902038,-5.87785252292474,-4.8141318431983,-5.75005252043287,-6.68561850734264,-5.62083377852134,-4.55570233019601,-5.49022817998138,-6.42441536663118,-5.35826794979003,-4.2917900097419,-5.22498564715931,-6.15785898285047,-5.0904141575038,-4.02265533143372,-4.95458668432387,-5.88621241496955,-4.81753674101726,-3.74856389870594,-4.67929814260551,-5.60974374535462,-4.53990499739559,-3.46978620671122,-4.39939169855913,-5.32872581520414,-4.25779291565087,-3.18659737537428,-4.11514358605105,-5.04343595528745,-3.97147890634798,-2.89927687788188,-3.82683432365084,-4.75415571225283,-3.68124552684697,-2.60810826487642,-3.53474843779249,-4.46117057077493,-3.38737920245312,-2.31337888462572,-3.23917418198139,-4.16476967181586,-3.09016994374948,-2.01537959944496,-2.94040325232291,-3.86524552727798,-2.78991106039232,-1.71440449865074,-2.63873049965358,-3.56289373132997,-2.48689887164859,-1.41075060833039,-2.33445363855888,-3.25801266869104,-2.18143241396549,-1.10471759821306,-2.02787295356493,-2.95090322016129,-1.87381314585734,-0.796607485931922,-1.71929100279411,-2.64186846568863,-1.56434465040242,-0.486724338969228,-1.40901231937582,-2.33121338526552,-1.25333233564318,-0.175373974578377,-1.09734311091042,-2.0192445579505,-0.941083133185295,0.137136342020764,-0.784590957278396,-1.70626985931167,-0.627905195293309,0.450498200875539,-0.471064507096353,-1.39259815759068,-0.314107590781254,0.764402351663902,-0.157073173118113,-1.07853900888711,5.40825329661918e-15
};

byte bit24val[3];

void convertLong2bit24vector(long val)
{
  for (int i = 0; i < 3 ; i++) {
    bit24val[i] = lowByte(val);
    val = val >> 8;
  }
}

void setup() {

  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  SPI.setDataMode (SPI_MODE2);
  pinMode(3, INPUT_PULLUP);
  //SPI.setClockDivider(SPI_CLOCK_DIV4);

}


void loop() {


  for (int i = 0; i < 80; i++) {
    convertLong2bit24vector(data[i]);
    digitalWrite(ss, LOW);

    SPI.transfer(0); // send command byte

    SPI.transfer(bit24val[2]);
    SPI.transfer(bit24val[1]);
    SPI.transfer(bit24val[0]);

    digitalWrite(ss, HIGH);

    delayMicroseconds(125);

  }

}
