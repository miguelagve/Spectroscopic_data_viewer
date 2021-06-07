function map = Accent(N)

if nargin<1 || isnumeric(N)&&isequal(N,[])

N=256;
else
	assert(isscalar(N)&&isfinite(N)&&isreal(N),...
		'SC:inferno:N:NotRealFiniteScalarNumeric',...
		'First argument <N> must be a real finite numeric scalar.')
end

raw = [0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.498039215686275 0.788235294117647 0.498039215686275;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.745098039215686 0.682352941176471 0.831372549019608;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;0.992156862745098 0.752941176470588 0.525490196078431;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;1 1 0.6;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.219607843137255 0.423529411764706 0.690196078431373;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.941176470588235 0.00784313725490196 0.498039215686275;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.749019607843137 0.356862745098039 0.0901960784313725;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4];

num = size(raw,1);

vec = linspace(0,num+1,N+2);
map = interp1(1:num,raw,vec(2:N+1),'linear','extrap');

map = max(0,min(1,map));
%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%inferno
