import subprocess
import shlex
import time
commands = [
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/class_rename.apk -o ClassRename -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/adv_reflection.apk -o AdvancedReflection -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/arith_branch.apk -o ArithmeticBranch -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/call_indirection.apk -o CallIndirection -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/cstring_encrypt.apk -o ConstStringEncryption -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/lib_encrypt.apk -o LibEncryption -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/method_overload.apk -o MethodOverload -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/method_rename.apk -o MethodRename -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/random_manifest.apk -o RandomManifest -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk",
"python3 -m obfuscapk.cli -p -w /Users/sakshamarora/Desktop/obfuscapk_work_dir -d /Users/sakshamarora/Desktop/obfuscapk_work_dir/reorder.apk -o Reorder -o Rebuild /Users/sakshamarora/Desktop/obfuscapk_work_dir/f638a7828900fcc9a680b10cc79f9b46eef43a1cd21e7324ece417a172da8857.apk"

]


subprocess.Popen(shlex.split(commands[7]))
# time.sleep(20)
