param "gopath" {
  default = "${HOME}/go"
}

task "gopath" {
  description = "Create GOPATH"
  check = "[[ -d {{param `gopath`}} ]]"
  apply = "mkdir -p {{param `gopath`}}"
}

task "install panicparse" {
  check = "[[ -f {{param `gopath`}}/bin/pp ]]"
  apply = "go get github.com/maruel/panicparse/cmd/pp"
  depends = ["task.gopath"]
}

task "install golint" {
  check = "[[ -f {{param `gopath`}}/bin/golint ]]"
  apply = "go get -u github.com/golang/lint/golint"
  depends = ["task.gopath"]
}

task "install goconvey" {
  check = "[[ -f {{param `gopath`}}/bin/goconvey ]]"
  apply = "go get github.com/smartystreets/goconvey"
  depends = ["task.gopath"]
}

task "install goimports" {
  check = "[[ -f {{param `gopath`}}/bin/goimports ]]"
  apply = "go get golang.org/x/tools/cmd/goimports"
  depends = ["task.gopath"]
}

task "install go guru" {
  check = "[[ -f {{param `gopath`}}/bin/guru ]]"
  apply = "go get golang.org/x/tools/cmd/guru"
  depends = ["task.gopath"]
}

task "install gosimple" {
  check = "[[ -f {{param `gopath`}}/bin/gosimple ]]"
  apply = "go get honnef.co/go/simple/cmd/gosimple"
  depends = ["task.gopath"]
}

task "install uconvert" {
  check = "[[ -f {{param `gopath`}}/bin/unconvert ]]"
  apply = "go get github.com/mdempsky/unconvert"
  depends = ["task.gopath"]
}

task "install structcheck" {
  check = "[[ -f {{param `gopath`}}/bin/structcheck ]]"
  apply = "go get github.com/opennota/check/cmd/structcheck"
  depends = ["task.gopath"]
}

task "install varcheck" {
  check = "[[ -f {{param `gopath`}}/bin/varcheck ]]"
  apply = "go get github.com/opennota/check/cmd/varcheck"
  depends = ["task.gopath"]
}

task "install aligncheck" {
  check = "[[ -f {{param `gopath`}}/bin/aligncheck ]]"
  apply = "go get github.com/opennota/check/cmd/aligncheck"
  depends = ["task.gopath"]
}

task "install gas" {
  check = "[[ -f {{param `gopath`}}/bin/gas ]]"
  apply = "go get github.com/HewlettPackard/gas"
  depends = ["task.gopath"]
}
