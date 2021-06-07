function map = YlGn(N)

if nargin<1 || isnumeric(N)&&isequal(N,[])

N=256;
else
	assert(isscalar(N)&&isfinite(N)&&isreal(N),...
		'SC:inferno:N:NotRealFiniteScalarNumeric',...
		'First argument <N> must be a real finite numeric scalar.')
end

raw = [1 1 0.898039215686275;0.999015763168012 0.999630911188005 0.892625913110342;0.998031526336025 0.999261822376009 0.88721261053441;0.997047289504037 0.998892733564014 0.881799307958477;0.996063052672049 0.998523644752018 0.876386005382545;0.995078815840062 0.998154555940023 0.870972702806613;0.994094579008074 0.997785467128028 0.865559400230681;0.993110342176086 0.997416378316032 0.860146097654748;0.992126105344098 0.997047289504037 0.854732795078816;0.991141868512111 0.996678200692041 0.849319492502884;0.990157631680123 0.996309111880046 0.843906189926951;0.989173394848135 0.995940023068051 0.838492887351019;0.988189158016148 0.995570934256055 0.833079584775086;0.98720492118416 0.99520184544406 0.827666282199154;0.986220684352172 0.994832756632065 0.822252979623222;0.985236447520185 0.994463667820069 0.81683967704729;0.984252210688197 0.994094579008074 0.811426374471357;0.983267973856209 0.993725490196078 0.806013071895425;0.982283737024221 0.993356401384083 0.800599769319493;0.981299500192234 0.992987312572088 0.79518646674356;0.980315263360246 0.992618223760092 0.789773164167628;0.979331026528258 0.992249134948097 0.784359861591695;0.978346789696271 0.991880046136101 0.778946559015763;0.977362552864283 0.991510957324106 0.773533256439831;0.976378316032295 0.991141868512111 0.768119953863899;0.975394079200308 0.990772779700115 0.762706651287966;0.97440984236832 0.99040369088812 0.757293348712034;0.973425605536332 0.990034602076125 0.751880046136101;0.972441368704344 0.989665513264129 0.746466743560169;0.971457131872357 0.989296424452134 0.741053440984237;0.970472895040369 0.988927335640138 0.735640138408304;0.969488658208381 0.988558246828143 0.730226835832372;0.968166089965398 0.988050749711649 0.725151864667436;0.964475201845444 0.986574394463668 0.722445213379469;0.96078431372549 0.985098039215686 0.719738562091503;0.957093425605536 0.983621683967705 0.717031910803537;0.953402537485582 0.982145328719723 0.714325259515571;0.949711649365629 0.980668973471742 0.711618608227605;0.946020761245675 0.97919261822376 0.708911956939639;0.942329873125721 0.977716262975779 0.706205305651672;0.938638985005767 0.976239907727797 0.703498654363706;0.934948096885813 0.974763552479815 0.70079200307574;0.931257208765859 0.973287197231834 0.698085351787774;0.927566320645905 0.971810841983852 0.695378700499808;0.923875432525952 0.970334486735871 0.692672049211842;0.920184544405998 0.968858131487889 0.689965397923875;0.916493656286044 0.967381776239908 0.687258746635909;0.91280276816609 0.965905420991926 0.684552095347943;0.909111880046136 0.964429065743945 0.681845444059977;0.905420991926182 0.962952710495963 0.679138792772011;0.901730103806228 0.961476355247982 0.676432141484045;0.898039215686275 0.96 0.673725490196078;0.894348327566321 0.958523644752018 0.671018838908112;0.890657439446367 0.957047289504037 0.668312187620146;0.886966551326413 0.955570934256055 0.66560553633218;0.883275663206459 0.954094579008074 0.662898885044214;0.879584775086505 0.952618223760092 0.660192233756248;0.875893886966551 0.951141868512111 0.657485582468281;0.872202998846597 0.949665513264129 0.654778931180315;0.868512110726644 0.948189158016148 0.652072279892349;0.86482122260669 0.946712802768166 0.649365628604383;0.861130334486736 0.945236447520185 0.646658977316417;0.857439446366782 0.943760092272203 0.643952326028451;0.853748558246828 0.942283737024221 0.641245674740484;0.84962706651288 0.940592079969243 0.638569780853518;0.844213763936947 0.938254517493272 0.63598615916955;0.838800461361015 0.935916955017301 0.633402537485583;0.833387158785083 0.93357939254133 0.630818915801615;0.82797385620915 0.931241830065359 0.628235294117647;0.822560553633218 0.928904267589389 0.625651672433679;0.817147251057286 0.926566705113418 0.623068050749712;0.811733948481353 0.924229142637447 0.620484429065744;0.806320645905421 0.921891580161476 0.617900807381776;0.800907343329489 0.919554017685506 0.615317185697808;0.795494040753556 0.917216455209535 0.612733564013841;0.790080738177624 0.914878892733564 0.610149942329873;0.784667435601692 0.912541330257593 0.607566320645905;0.779254133025759 0.910203767781622 0.604982698961938;0.773840830449827 0.907866205305652 0.60239907727797;0.768427527873895 0.905528642829681 0.599815455594002;0.763014225297962 0.90319108035371 0.597231833910035;0.75760092272203 0.900853517877739 0.594648212226067;0.752187620146098 0.898515955401769 0.592064590542099;0.746774317570165 0.896178392925798 0.589480968858132;0.741361014994233 0.893840830449827 0.586897347174164;0.735947712418301 0.891503267973856 0.584313725490196;0.730534409842368 0.889165705497885 0.581730103806228;0.725121107266436 0.886828143021915 0.579146482122261;0.719707804690504 0.884490580545944 0.576562860438293;0.714294502114571 0.882153018069973 0.573979238754325;0.708881199538639 0.879815455594002 0.571395617070358;0.703467896962707 0.877477893118032 0.56881199538639;0.698054594386774 0.875140330642061 0.566228373702422;0.692641291810842 0.87280276816609 0.563644752018454;0.68722798923491 0.870465205690119 0.561061130334487;0.681814686658977 0.868127643214148 0.558477508650519;0.67598615916955 0.86560553633218 0.555893886966551;0.669465590157632 0.862775855440215 0.553310265282584;0.662945021145713 0.859946174548251 0.550726643598616;0.656424452133795 0.857116493656286 0.548143021914648;0.649903883121876 0.854286812764321 0.545559400230681;0.643383314109958 0.851457131872357 0.542975778546713;0.636862745098039 0.848627450980392 0.540392156862745;0.630342176086121 0.845797770088428 0.537808535178777;0.623821607074202 0.842968089196463 0.53522491349481;0.617301038062284 0.840138408304498 0.532641291810842;0.610780469050365 0.837308727412534 0.530057670126874;0.604259900038447 0.834479046520569 0.527474048442907;0.597739331026528 0.831649365628604 0.524890426758939;0.59121876201461 0.82881968473664 0.522306805074971;0.584698193002691 0.825990003844675 0.519723183391003;0.578177623990773 0.82316032295271 0.517139561707036;0.571657054978854 0.820330642060746 0.514555940023068;0.565136485966936 0.817500961168781 0.5119723183391;0.558615916955017 0.814671280276817 0.509388696655133;0.552095347943099 0.811841599384852 0.506805074971165;0.54557477893118 0.809011918492887 0.504221453287197;0.539054209919262 0.806182237600923 0.50163783160323;0.532533640907343 0.803352556708958 0.499054209919262;0.526013071895425 0.800522875816994 0.496470588235294;0.519492502883506 0.797693194925029 0.493886966551326;0.512971933871588 0.794863514033064 0.491303344867359;0.506451364859669 0.7920338331411 0.488719723183391;0.499930795847751 0.789204152249135 0.486136101499423;0.493410226835832 0.78637447135717 0.483552479815456;0.486889657823914 0.783544790465206 0.480968858131488;0.480369088811995 0.780715109573241 0.47838523644752;0.473848519800077 0.777885428681276 0.475801614763552;0.46720492118416 0.774809688581315 0.47278738946559;0.460438292964244 0.771487889273356 0.469342560553633;0.453671664744329 0.768166089965398 0.465897731641676;0.446905036524414 0.764844290657439 0.462452902729719;0.440138408304498 0.761522491349481 0.459008073817762;0.433371780084583 0.758200692041523 0.455563244905805;0.426605151864667 0.754878892733564 0.452118415993848;0.419838523644752 0.751557093425606 0.448673587081892;0.413071895424837 0.748235294117647 0.445228758169935;0.406305267204921 0.744913494809689 0.441783929257978;0.399538638985006 0.74159169550173 0.438339100346021;0.39277201076509 0.738269896193772 0.434894271434064;0.386005382545175 0.734948096885813 0.431449442522107;0.379238754325259 0.731626297577855 0.42800461361015;0.372472126105344 0.728304498269896 0.424559784698193;0.365705497885429 0.724982698961938 0.421114955786236;0.358938869665513 0.721660899653979 0.417670126874279;0.352172241445598 0.718339100346021 0.414225297962322;0.345405613225682 0.715017301038062 0.410780469050365;0.338638985005767 0.711695501730104 0.407335640138408;0.331872356785852 0.708373702422145 0.403890811226451;0.325105728565936 0.705051903114187 0.400445982314494;0.318339100346021 0.701730103806228 0.397001153402537;0.311572472126105 0.69840830449827 0.393556324490581;0.30480584390619 0.695086505190311 0.390111495578624;0.298039215686274 0.691764705882353 0.386666666666667;0.291272587466359 0.688442906574394 0.38322183775471;0.284505959246444 0.685121107266436 0.379777008842753;0.277739331026528 0.681799307958477 0.376332179930796;0.270972702806613 0.678477508650519 0.372887351018839;0.264206074586697 0.675155709342561 0.369442522106882;0.257439446366782 0.671833910034602 0.365997693194925;0.252595155709343 0.667589388696655 0.362706651287966;0.248904267589389 0.662791234140715 0.359507881584006;0.245213379469435 0.657993079584775 0.356309111880046;0.241522491349481 0.653194925028835 0.353110342176086;0.237831603229527 0.648396770472895 0.349911572472126;0.234140715109573 0.643598615916955 0.346712802768166;0.230449826989619 0.638800461361015 0.343514033064206;0.226758938869665 0.634002306805075 0.340315263360246;0.223068050749712 0.629204152249135 0.337116493656286;0.219377162629758 0.624405997693195 0.333917723952326;0.215686274509804 0.619607843137255 0.330718954248366;0.21199538638985 0.614809688581315 0.327520184544406;0.208304498269896 0.610011534025375 0.324321414840446;0.204613610149942 0.605213379469435 0.321122645136486;0.200922722029988 0.600415224913495 0.317923875432526;0.197231833910035 0.595617070357555 0.314725105728566;0.193540945790081 0.590818915801615 0.311526336024606;0.189850057670127 0.586020761245675 0.308327566320646;0.186159169550173 0.581222606689735 0.305128796616686;0.182468281430219 0.576424452133795 0.301930026912726;0.178777393310265 0.571626297577855 0.298731257208766;0.175086505190311 0.566828143021915 0.295532487504806;0.171395617070358 0.562029988465975 0.292333717800846;0.167704728950404 0.557231833910035 0.289134948096886;0.16401384083045 0.552433679354095 0.285936178392926;0.160322952710496 0.547635524798155 0.282737408688966;0.156632064590542 0.542837370242215 0.279538638985006;0.152941176470588 0.538039215686275 0.276339869281046;0.149250288350634 0.533241061130335 0.273141099577086;0.145559400230681 0.528442906574395 0.269942329873126;0.141868512110727 0.523644752018455 0.266743560169166;0.138177623990773 0.518846597462514 0.263544790465206;0.134025374855825 0.515063437139562 0.26163783160323;0.129719338715879 0.511618608227605 0.260161476355248;0.125413302575932 0.508173779315648 0.258685121107266;0.121107266435986 0.504728950403691 0.257208765859285;0.11680123029604 0.501284121491734 0.255732410611303;0.112495194156094 0.497839292579777 0.254256055363322;0.108189158016148 0.49439446366782 0.25277970011534;0.103883121876201 0.490949634755863 0.251303344867359;0.0995770857362553 0.487504805843906 0.249826989619377;0.0952710495963091 0.484059976931949 0.248350634371396;0.0909650134563629 0.480615148019992 0.246874279123414;0.0866589773164168 0.477170319108035 0.245397923875433;0.0823529411764706 0.473725490196078 0.243921568627451;0.0780469050365244 0.470280661284121 0.242445213379469;0.0737408688965782 0.466835832372165 0.240968858131488;0.0694348327566321 0.463391003460208 0.239492502883506;0.0651287966166859 0.459946174548251 0.238016147635525;0.0608227604767397 0.456501345636294 0.236539792387543;0.0565167243367935 0.453056516724337 0.235063437139562;0.0522106881968474 0.44961168781238 0.23358708189158;0.0479046520569013 0.446166858900423 0.232110726643599;0.043598615916955 0.442722029988466 0.230634371395617;0.0392925797770088 0.439277201076509 0.229158016147636;0.0349865436370627 0.435832372164552 0.227681660899654;0.0306805074971165 0.432387543252595 0.226205305651672;0.0263744713571703 0.428942714340638 0.224728950403691;0.0220684352172241 0.425497885428681 0.223252595155709;0.017762399077278 0.422053056516724 0.221776239907728;0.0134563629373318 0.418608227604767 0.220299884659746;0.00915032679738562 0.41516339869281 0.218823529411765;0.00484429065743944 0.411718569780854 0.217347174163783;0.000538254517493258 0.408273740868897 0.215870818915802;0 0.404075355632449 0.214179161860823;0 0.399769319492503 0.212456747404844;0 0.395463283352557 0.210734332948866;0 0.391157247212611 0.209011918492887;0 0.386851211072664 0.207289504036909;0 0.382545174932718 0.20556708958093;0 0.378239138792772 0.203844675124952;0 0.373933102652826 0.202122260668973;0 0.36962706651288 0.200399846212995;0 0.365321030372933 0.198677431757017;0 0.361014994232987 0.196955017301038;0 0.356708958093041 0.19523260284506;0 0.352402921953095 0.193510188389081;0 0.348096885813149 0.191787773933103;0 0.343790849673203 0.190065359477124;0 0.339484813533256 0.188342945021146;0 0.33517877739331 0.186620530565167;0 0.330872741253364 0.184898116109189;0 0.326566705113418 0.18317570165321;0 0.322260668973472 0.181453287197232;0 0.317954632833526 0.179730872741253;0 0.313648596693579 0.178008458285275;0 0.309342560553633 0.176286043829296;0 0.305036524413687 0.174563629373318;0 0.300730488273741 0.17284121491734;0 0.296424452133795 0.171118800461361;0 0.292118415993849 0.169396386005383;0 0.287812379853902 0.167673971549404;0 0.283506343713956 0.165951557093426;0 0.27920030757401 0.164229142637447;0 0.274894271434064 0.162506728181469;0 0.270588235294118 0.16078431372549];

num = size(raw,1);

vec = linspace(0,num+1,N+2);
map = interp1(1:num,raw,vec(2:N+1),'linear','extrap');

map = max(0,min(1,map));
%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%inferno
