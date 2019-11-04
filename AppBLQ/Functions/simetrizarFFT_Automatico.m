% ----------------------------------------
%   SIMETRIZAR TRANSFORMADAS DE FOURIER
% ----------------------------------------
% Ant�n - 21/04-2016
% ----------------------------------------
%
% DESCRIPCI�N:
% ------------------------------
% Simetrizaci�n de la 2D-FFT con respecto a un eje que se introduce a mano.
% La simetrizaci�n se hace con un promedio de las l�neas con respecto a ese
% eje. La funci�n devuelve una matriz orientada del mismo modo que la
% original.
%
% ENTRADAS:
% ------------------------------
% TransformadasEqualizados: CellArray creado con el escript de an�lisis que
%                           contiene las 2D-FFT que queremos simetrizar.
%
% Angulo: �ngulo en grados sobre el que se hace la simetrizaci�n.
%
% Type: tipo de simetrizaci�n que se quiere llevar a cabo.
%       Type = 1 -> Simetr�a Hermann (dos espejos)
%       Type = 2 -> Simetr�a espejando (vertical)
%       Type = 3 -> Simert�as C4 bien
% ------------------------------
%
% Nota: Los tama�os se encuentran duplicados para facilitar el an�lisis de
% im�genes de distintos tama�os y puntos en X e Y sin tener que reescribir
% todo el c�digo.
%
% SALIDA:
% ------------------------------
% TransformadasSimetrizadas:    Contiene las matrices simetrizadas en el
%                               eje seleccionado y orientadas del mimo modo
%                               que las originales. Conservan tambi�n su
%                               tama�o en pixeles para simplificar el
%                               tratamiento en posteriores funciones pese a
%                               que las zonas de los bordes generadas con
%                               las distintas rotaciones no tienen sentido.
%

function [TransformadasSimetrizadas] = simetrizarFFT_Automatico(TransformadasEqualizados,Angulo,Type)

% Creamos el cellArray de salida que contendr� las matrices simetrizadas y
% que por conveniencia tendr�n el mismo tama�o que las originales aunque
% los puntos est�n interpolados.
% Los vectores Tamanho hacen falta para pasar de distancia a p�xeles

%Con la antigua definici�n de cells
    [NumeroMapas, Filas, Columnas] = size(TransformadasEqualizados);
    
%Con la nueva definici�n de cells
%     [~, NumeroMapas] = size(TransformadasEqualizados);
%     [Filas, Columnas] = size(TransformadasEqualizados{1});
%----------------------------------------------------------
    TransformadasSimetrizadasAUX = TransformadasEqualizados;  

%   Control sobre el valor del �ngulo

%         if Angulo == 90
%             Angulo = Angulo + 0.001*rand;
%         elseif Angulo == 180
%             Angulo = Angulo + 0.001*rand;
%         else
%         end
        
% Rotamos todas las transformadas {IndiceMapa} el �ngulos correspondiente. Siempre
% colocando el punto seleccionado sobre OX+

	for IndiceMapa = 1:NumeroMapas  
        
        if Angulo >= 0
        	MatrizRotada = imrotate(TransformadasSimetrizadasAUX{IndiceMapa},Angulo);
            
        elseif Angulo <0
            Angulo = 180 + Angulo;
        	MatrizRotada = imrotate(TransformadasSimetrizadasAUX{IndiceMapa},Angulo);
            
        else
            disp('�Problemas con la rotaci�n!')
            
        end

%   Localizamos el centro de la matriz Rotada para hacer el zoom que nos
%   interesa guardar, del mismo tama�o en p�xeles que la matriz original

        [FilasMatrizRotada, ColumnasMatrizRotada] = size(MatrizRotada);
        CentroX = ceil(ColumnasMatrizRotada/2);
        CentroY = ceil(FilasMatrizRotada/2);

        MatrizRotadaZoom = MatrizRotada(CentroY-Filas/2+1:CentroY+Filas/2,CentroX-Columnas/2+1:CentroX+Columnas/2);
        MatrizSymetrizada = MatrizRotadaZoom;
  
        
        
        if Type == 1
%           SIMETRIA HERMANN (Type = 1)
%   Concentra todo en un cuadrante y replica
% ---------------------------------------------     
            XCentro = Columnas/2;
            YCentro = Filas/2;
            for i = 1:Columnas/2
                for j = 1:Filas/2
                    MatrizSymetrizada(XCentro+j,YCentro+i) = (1/4)*(MatrizRotadaZoom(XCentro+j,YCentro+i) +MatrizRotadaZoom(XCentro-(j-1),YCentro+i)+MatrizRotadaZoom(XCentro-(j-1),YCentro-(i-1))+MatrizRotadaZoom(XCentro+j,YCentro-(i-1)));
                    MatrizSymetrizada(XCentro-(j-1),YCentro+i) = MatrizSymetrizada(XCentro+j,YCentro+i);
                    MatrizSymetrizada(XCentro-(j-1),YCentro-(i-1)) = MatrizSymetrizada(XCentro+j,YCentro+i);
                    MatrizSymetrizada(XCentro+j,YCentro-(i-1)) = MatrizSymetrizada(XCentro+j,YCentro+i);
                end
            end           
        
        elseif Type == 2
% ---------------------------------------------
%           SIMETRIA ESPEJANDO (Type = 2)
%   Espeja en ejes perpendiculares
% ---------------------------------------------      
            for i = 1:Columnas/2
                MatrizSymetrizada(i,:) = (1/2)*( MatrizRotadaZoom(i,:) + MatrizRotadaZoom(Columnas-(i-1),:));
                MatrizSymetrizada(Columnas-(i-1),:) = MatrizSymetrizada(i,:);
            end
            
        
% ---------------------------------------------
%               SIMETR�A C4
%   Roto la matriz 4 veces y hago el promedio de las 4
% ---------------------------------------------        
%         M1 = imrotate(MatrizRotadaZoom,90);
%         M2 = imrotate(MatrizRotadaZoom,180);
%         M3 = imrotate(MatrizRotadaZoom,270);
%         
%         for i = 1:Filas
%             MatrizSymetrizada(i,:) = (MatrizRotadaZoom(i,:)+M1(i,:)+M2(i,:)+M3(i,:))/4;
%         end
        
        elseif Type == 3
% ---------------------------------------------
%               SIMETR�A C4 bien (Type = 3)
% Roto la matriz 4 veces y hago el promedio de las 4
% ---------------------------------------------
            M1 = imrotate(MatrizRotadaZoom,90);
            M2 = imrotate(MatrizRotadaZoom,180);
            M3 = imrotate(MatrizRotadaZoom,270);

            ME = flipud(MatrizRotadaZoom);
            ME1 = imrotate(ME,90);
            ME2 = imrotate(ME,180);
            ME3 = imrotate(ME,270);

            for i = 1:Filas
                MatrizSymetrizada(i,:) = (MatrizRotadaZoom(i,:)+M1(i,:)+M2(i,:)+M3(i,:)...
                +ME(i,:)+ME1(i,:)+ME2(i,:)+ME3(i,:))/8;
            end
% ---------------------------------------------
        else
            disp('Unknown type of symmetry')
        end
%   Invertimos la matriz antes de sacarla para ponerla en la orientaci�n
%   inicial y hacemos un zoom para conservar el n�mero de puntos.

%         MatrizRotadaInversa = imrotate(MatrizSymetrizada,-Angulo);
%         MatrizSalida = MatrizRotadaInversa(CentroY-Columnas/2+1:CentroY+Columnas/2,CentroX-Columnas/2+1:CentroX+Columnas/2);
        TransformadasSimetrizadasAUX{IndiceMapa} = MatrizSymetrizada;
        
	end
    
% Asignamos el valor al CellArray de la salida
   
    TransformadasSimetrizadas = TransformadasSimetrizadasAUX;

end