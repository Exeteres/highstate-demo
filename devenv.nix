{pkgs, ...}: {
  languages.javascript.enable = true;
  languages.javascript.package = pkgs.nodejs_22;
  languages.javascript.corepack.enable = true;

  packages = with pkgs; [
    pulumi-bin
    pulumiPackages.pulumi-language-nodejs
    crd2pulumi
    kubectl
    kubernetes-helm
    cilium-cli
    talosctl
    nodejs_22
    yq-go
    jq
  ];
}
