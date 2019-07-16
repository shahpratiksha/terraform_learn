{"filter":false,"title":"main.tf","tooltip":"/hack/main.tf","undoManager":{"mark":27,"position":27,"stack":[[{"start":{"row":0,"column":0},"end":{"row":19,"column":1},"action":"insert","lines":["module \"vpc\" {","  source  = \"terraform-aws-modules/vpc/aws\"","  version = \"2.7.0\"","","  name = \"complete-example\"","","  cidr = \"10.10.0.0/16\"","","  azs             = [\"us-east-1c\", \"us-east-1b\"]","  public_subnets  = [\"10.10.1.0/24\", \"10.10.2.0/24\"]","  private_subnets = [\"10.10.3.0/24\", \"10.10.4.0/24\"]","","  enable_nat_gateway = true","","  tags = {","    Owner       = \"user\"","    Environment = \"terraform.workspace\"","    Name        = \"terraform vpc\"","  }","}"],"id":1}],[{"start":{"row":19,"column":1},"end":{"row":20,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":20,"column":0},"end":{"row":21,"column":0},"action":"insert","lines":["",""]},{"start":{"row":21,"column":0},"end":{"row":22,"column":0},"action":"insert","lines":["",""]},{"start":{"row":22,"column":0},"end":{"row":22,"column":1},"action":"insert","lines":["p"]},{"start":{"row":22,"column":1},"end":{"row":22,"column":2},"action":"insert","lines":["r"]},{"start":{"row":22,"column":2},"end":{"row":22,"column":3},"action":"insert","lines":["o"]},{"start":{"row":22,"column":3},"end":{"row":22,"column":4},"action":"insert","lines":["v"]},{"start":{"row":22,"column":4},"end":{"row":22,"column":5},"action":"insert","lines":["i"]},{"start":{"row":22,"column":5},"end":{"row":22,"column":6},"action":"insert","lines":["d"]},{"start":{"row":22,"column":6},"end":{"row":22,"column":7},"action":"insert","lines":["e"]}],[{"start":{"row":22,"column":7},"end":{"row":22,"column":8},"action":"insert","lines":["r"],"id":3}],[{"start":{"row":22,"column":8},"end":{"row":22,"column":9},"action":"insert","lines":[" "],"id":4}],[{"start":{"row":22,"column":9},"end":{"row":22,"column":11},"action":"insert","lines":["\"\""],"id":5}],[{"start":{"row":22,"column":10},"end":{"row":22,"column":11},"action":"insert","lines":["a"],"id":6},{"start":{"row":22,"column":11},"end":{"row":22,"column":12},"action":"insert","lines":["w"]},{"start":{"row":22,"column":12},"end":{"row":22,"column":13},"action":"insert","lines":["s"]}],[{"start":{"row":22,"column":14},"end":{"row":22,"column":15},"action":"insert","lines":[" "],"id":7},{"start":{"row":22,"column":15},"end":{"row":22,"column":16},"action":"insert","lines":["{"]}],[{"start":{"row":22,"column":16},"end":{"row":24,"column":1},"action":"insert","lines":["","    ","}"],"id":8}],[{"start":{"row":23,"column":4},"end":{"row":23,"column":5},"action":"insert","lines":["r"],"id":9},{"start":{"row":23,"column":5},"end":{"row":23,"column":6},"action":"insert","lines":["e"]},{"start":{"row":23,"column":6},"end":{"row":23,"column":7},"action":"insert","lines":["g"]},{"start":{"row":23,"column":7},"end":{"row":23,"column":8},"action":"insert","lines":["i"]},{"start":{"row":23,"column":8},"end":{"row":23,"column":9},"action":"insert","lines":["o"]},{"start":{"row":23,"column":9},"end":{"row":23,"column":10},"action":"insert","lines":["n"]}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":11},"action":"insert","lines":[" "],"id":10}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":11},"action":"remove","lines":[" "],"id":11}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":11},"action":"insert","lines":[" "],"id":12},{"start":{"row":23,"column":11},"end":{"row":23,"column":12},"action":"insert","lines":["="]}],[{"start":{"row":23,"column":12},"end":{"row":23,"column":13},"action":"insert","lines":[" "],"id":13}],[{"start":{"row":23,"column":13},"end":{"row":23,"column":15},"action":"insert","lines":["\"\""],"id":14}],[{"start":{"row":23,"column":14},"end":{"row":23,"column":15},"action":"insert","lines":["a"],"id":15},{"start":{"row":23,"column":15},"end":{"row":23,"column":16},"action":"insert","lines":["p"]},{"start":{"row":23,"column":16},"end":{"row":23,"column":17},"action":"insert","lines":["-"]},{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"insert","lines":["n"]},{"start":{"row":23,"column":18},"end":{"row":23,"column":19},"action":"insert","lines":["o"]},{"start":{"row":23,"column":19},"end":{"row":23,"column":20},"action":"insert","lines":["r"]},{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"insert","lines":["e"]}],[{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"remove","lines":["e"],"id":16}],[{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"insert","lines":["t"],"id":17},{"start":{"row":23,"column":21},"end":{"row":23,"column":22},"action":"insert","lines":["h"]},{"start":{"row":23,"column":22},"end":{"row":23,"column":23},"action":"insert","lines":["e"]},{"start":{"row":23,"column":23},"end":{"row":23,"column":24},"action":"insert","lines":["a"]}],[{"start":{"row":23,"column":24},"end":{"row":23,"column":25},"action":"insert","lines":["s"],"id":18},{"start":{"row":23,"column":25},"end":{"row":23,"column":26},"action":"insert","lines":["t"]},{"start":{"row":23,"column":26},"end":{"row":23,"column":27},"action":"insert","lines":["-"]},{"start":{"row":23,"column":27},"end":{"row":23,"column":28},"action":"insert","lines":["1"]}],[{"start":{"row":24,"column":1},"end":{"row":25,"column":0},"action":"insert","lines":["",""],"id":19},{"start":{"row":25,"column":0},"end":{"row":26,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"insert","lines":["u"],"id":20},{"start":{"row":0,"column":9},"end":{"row":0,"column":10},"action":"insert","lines":["s"]},{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"insert","lines":["e"]},{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"insert","lines":["r"]},{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"insert","lines":["1"]},{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"insert","lines":["4"]},{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"insert","lines":["_"]}],[{"start":{"row":15,"column":23},"end":{"row":15,"column":24},"action":"insert","lines":["1"],"id":21},{"start":{"row":15,"column":24},"end":{"row":15,"column":25},"action":"insert","lines":["4"]}],[{"start":{"row":17,"column":19},"end":{"row":17,"column":20},"action":"insert","lines":["u"],"id":22},{"start":{"row":17,"column":20},"end":{"row":17,"column":21},"action":"insert","lines":["s"]},{"start":{"row":17,"column":21},"end":{"row":17,"column":22},"action":"insert","lines":["e"]},{"start":{"row":17,"column":22},"end":{"row":17,"column":23},"action":"insert","lines":["r"]}],[{"start":{"row":17,"column":23},"end":{"row":17,"column":24},"action":"insert","lines":[" "],"id":23}],[{"start":{"row":17,"column":23},"end":{"row":17,"column":24},"action":"insert","lines":["_"],"id":24},{"start":{"row":17,"column":24},"end":{"row":17,"column":25},"action":"insert","lines":["1"]},{"start":{"row":17,"column":25},"end":{"row":17,"column":26},"action":"insert","lines":["4"]}],[{"start":{"row":8,"column":22},"end":{"row":8,"column":32},"action":"remove","lines":["us-east-1c"],"id":25},{"start":{"row":8,"column":22},"end":{"row":8,"column":37},"action":"insert","lines":["ap-northeast-1b"]}],[{"start":{"row":8,"column":41},"end":{"row":8,"column":51},"action":"remove","lines":["us-east-1b"],"id":26},{"start":{"row":8,"column":41},"end":{"row":8,"column":56},"action":"insert","lines":["ap-northeast-1b"]}],[{"start":{"row":8,"column":55},"end":{"row":8,"column":56},"action":"remove","lines":["b"],"id":27}],[{"start":{"row":8,"column":55},"end":{"row":8,"column":56},"action":"insert","lines":["c"],"id":28}]]},"ace":{"folds":[],"scrolltop":229.5,"scrollleft":0,"selection":{"start":{"row":15,"column":26},"end":{"row":15,"column":26},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":13,"state":"start","mode":"ace/mode/terraform"}},"timestamp":1563309782905,"hash":"e5e506be17b923df52f6f526e912c3315f8a64c7"}