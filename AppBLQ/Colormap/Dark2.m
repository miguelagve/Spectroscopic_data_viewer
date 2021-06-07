function map = Dark2(N)

if nargin<1 || isnumeric(N)&&isequal(N,[])

N=256;
else
	assert(isscalar(N)&&isfinite(N)&&isreal(N),...
		'SC:inferno:N:NotRealFiniteScalarNumeric',...
		'First argument <N> must be a real finite numeric scalar.')
end

raw = [0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.105882352941176 0.619607843137255 0.466666666666667;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.850980392156863 0.372549019607843 0.00784313725490196;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.458823529411765 0.43921568627451 0.701960784313725;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.905882352941176 0.16078431372549 0.541176470588235;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.4 0.650980392156863 0.117647058823529;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.901960784313726 0.670588235294118 0.00784313725490196;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.650980392156863 0.462745098039216 0.113725490196078;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4;0.4 0.4 0.4];

num = size(raw,1);

vec = linspace(0,num+1,N+2);
map = interp1(1:num,raw,vec(2:N+1),'linear','extrap');

map = max(0,min(1,map));
%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%inferno
