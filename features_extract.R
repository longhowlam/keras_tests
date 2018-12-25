library(keras)

vgg16_notop = keras::application_vgg16(weights = 'imagenet', include_top = FALSE)

t0 = proc.time()
imgf = "162.png"
img = image_load(
  imgf,
  target_size = c(224,224)
)
x = image_to_array(img)

dim(x) <- c(1, dim(x))
x = imagenet_preprocess_input(x)

# extract features
features = vgg16_notop %>% predict(x)
f1 = as.numeric(features)
t1 = proc.time()


t1 - t0