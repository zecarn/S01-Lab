let a = 0
let b = 0
let c = 0

print "Entre com os valores A, B e C da funcao do segundo grau: "
input "A: "; a
input "B: "; b
input "C: "; c

let delta = (b*b) + (-4*a*c)

let x1 = (b - (-SQR(delta))) / (2*a)
let x2 = (b - (+SQR(delta))) / (2*a)

print "Suas raizes sao:"
print "x1 = " + x1
print "x2 = " + x2
