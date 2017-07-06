# To list file
# ls -1 | xargs -I % echo \"%\",

files = [
"fe65p2_addon.vhd",
]

modules = {
"local" : ["common","spartan6","kintex7","i2c-master","rx-core","trigger-logic","tx-core",],
}


