%chain coding example
im = ~im2bw(imread('camera.jpg'));
out = ~bwperim(im);

[y,x] = find(out == 0);
cc = chaincode([y x]);
