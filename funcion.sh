function holiwis {
	echo "holis $1"
}
function plier {
	local sum=1
	for element in $@
	do
		let sum=sum*$element
	done
	echo "$sum"
}

function par {
if [[ $1%2 -eq 0 ]]
then
	echo par
else
	echo impar
fi
}

function nevens {
pares=0
for i in $@
	do
	evaluo=$(par $i)
	if [[ $evaluo = "par" ]]
	then
		let pares=$pares+1
	else
		let pares=pares
	fi
	done
echo $pares
}
function porcentaje {
pares=$(nevens $@)
resul=$pares/$#
echo $resul
}

