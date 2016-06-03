%LoG yönteminde, görüntüyü değişik kesim frekanslarında
%sınırlandırmak için Gaussian alçak geçiren süzgeç kullanılmaktadır ( Bu şekilde
%görüntü geçişleri yumuşaklaştırılır). Görüntünün doğrudan laplasyeninin
%alınması gürültüyü daha da kuvvetlendireceği için arzu edilmeyen birçok yapay
%kenar noktasının elde edilmesi olasıdır. LoG yöntemi ile doğrudan doğruya
%görüntünün laplasyenini almaktansa görüntünün bir Gaussian fonksiyonu ile
%konvolüsyona tabi tutup daha sonra laplasyenini hesaplamak daha mantıklı bir
%yol olarak görünmektedir.
I = imread('camera.jpg');
h = fspecial('laplacian',1);
% 75 = kendi sectigim threshold
% h = laplace filtrem
edge1 = edge(I,'zerocross',75,h);

log=fspecial('log',13,2);
%log = threshold oluyors
edge2 = edge(I,'log',log);

subplot(1,2,1),imshow(edge1),title('laplacian');
subplot(1,2,2),imshow(edge2),title('laplasian of gauss');
