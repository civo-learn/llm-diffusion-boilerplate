resource "helm_release" "automatic1111" {
  name             = "automatic1111"
  chart            = "../helm/automatic1111/"
  namespace        = "automatic1111"
  create_namespace = true
  replace          = true
  timeout          = 6000
  depends_on = [
    kubernetes_daemonset.nvidia-device-plugin-daemonset
  ]
}
