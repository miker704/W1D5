// def zip(*arr)
//     if(arr.length==1)
//         return arr
//     end


//  array=Array.new(arr.length){Array.new(arr[0].length)}

//  arr.each.with_index do |ele,i|
//  ele.each.with_index do |v,j|
//  array[i][j]=v

//  end
//  end
// # (0...arr.length).each do |i|
// # (i...arr[0].length).each do |j|
// # array[j][i]=arr[i][j]
// # end

// # end


//  return array
// end
let array_1 = ['a', 'b', 'c']
let array_2 = [1, 2, 3]
let array_3 = ['w', 'x', 'y']
// p zip(array_1)
// p zip(array_1,array_2)
// p zip(array_1,array_2,array_3)


function zip(arr) {
    array = [[], [], []]

    for (let i = 0; i < arr.length; i++) {
        for (let j = 0; j < arr.length; j++) {
            array[j].push(arr[i][j])
        }
    }

    return array

}

let arr = [array_1, array_2, array_3];

console.log(zip(arr));