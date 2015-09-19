$numbers = []
$solution = []
$printSolution = ""

def processLine
    if $numbers[0] == 1
        puts $numbers[0].to_i.to_s+"/"+$numbers[1].to_i.to_s+" = "+$numbers[0].to_i.to_s+"/"+$numbers[1].to_i.to_s
    elsif $numbers[0] == 0
        puts $numbers[0].to_i.to_s+"/"+$numbers[1].to_i.to_s+" = 0"
    else
        if $numbers[0] > $numbers[1]
            n = $numbers[0] - $numbers[1]
            $solution.push(1)
        else
            n = $numbers[0]
        end
        $denom = 2
        while n > 0.00000001
            if n >= ($numbers[1]/$denom)
                n = n - ($numbers[1]/$denom)
                $solution.push($denom)
            end
            $denom += 1
        end           
        $denom = 0
        for i in 0..$solution.length-1
            $printSolution.insert(-1,"1/#{$solution[i]} + ")
        end
        $printSolution[-2]= ""
        puts $numbers[0].to_i.to_s+"/"+$numbers[1].to_i.to_s+" = "+$printSolution.to_s
    end
end

$stdin.each_line.each_with_index do |line, index|
    $numbers = line.chomp.split(" ").map{|i| i.to_f}
    processLine
    $numbers.clear #clear out arrays
    $solution.clear
    $printSolution.clear 
end