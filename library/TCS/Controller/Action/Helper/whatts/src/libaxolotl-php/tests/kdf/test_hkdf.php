<?php

require_once __DIR__.'/../../kdf/HKDF.php';
class HKDFTest extends PHPUnit_Framework_TestCase
{
    public function testVectorV3()
    {
        $ikm = "\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b";

        $salt = "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c";

        $info = "\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9";

        $okm = "\x3c\xb2\x5f\x25\xfa\xac\xd5\x7a\x90\x43\x4f\x64\xd0\x36\x2f\x2a\x2d\x2d\x0a\x90\xcf\x1a\x5a\x4c\x5d\xb0\x2d\x56\xec\xc4\xc5\xbf\x34\x00\x72\x08\xd5\xb8\x87\x18\x58\x65";

        $actualOutput = HKDF::createFor(3)->deriveSecrets($ikm, $info, 42, $salt);
        $this->assertEquals($okm, $actualOutput);
    }

    public function testVectorLongV3()
    {
        $ikm = "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\x1b\x1c\x1d\x1e\x1f\x20\x21\x22\x23\x24\x25\x26\x27\x28\x29\x2a\x2b\x2c\x2d\x2e\x2f\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39\x3a\x3b\x3c\x3d\x3e\x3f\x40\x41\x42\x43\x44\x45\x46\x47\x48\x49\x4a\x4b\x4c\x4d\x4e\x4f";

        $salt = "\x60\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6a\x6b\x6c\x6d\x6e\x6f\x70\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7a\x7b\x7c\x7d\x7e\x7f\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf";

        $info = "\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff";

        $okm = "\xb1\x1e\x39\x8d\xc8\x03\x27\xa1\xc8\xe7\xf7\x8c\x59\x6a\x49\x34\x4f\x01\x2e\xda\x2d\x4e\xfa\xd8\xa0\x50\xcc\x4c\x19\xaf\xa9\x7c\x59\x04\x5a\x99\xca\xc7\x82\x72\x71\xcb\x41\xc6\x5e\x59\x0e\x09\xda\x32\x75\x60\x0c\x2f\x09\xb8\x36\x77\x93\xa9\xac\xa3\xdb\x71\xcc\x30\xc5\x81\x79\xec\x3e\x87\xc1\x4c\x01\xd5\xc1\xf3\x43\x4f\x1d\x87";

        $actualOutput = HKDF::createFor(3)->deriveSecrets($ikm, $info, 82, $salt);
        $this->assertEquals($okm, $actualOutput);
    }

    public function testVectorV2()
    {
        $ikm = "\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b";

        $salt = "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c";

        $info = "\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9";

        $okm = "\x6e\xc2\x55\x6d\x5d\x7b\x1d\x81\xde\xe4\x22\x2a\xd7\x48\x36\x95\xdd\xc9\x8f\x4f\x5f\xab\xc0\xe0\x20\x5d\xc2\xef\x87\x52\xd4\x1e\x04\xe2\xe2\x11\x01\xc6\x8f\xf0\x93\x94\xb8\xad\x0b\xdc\xb9\x60\x9c\xd4\xee\x82\xac\x13\x19\x9b\x4a\xa9\xfd\xa8\x99\xda\xeb\xec";

        $actualOutput = HKDF::createFor(2)->deriveSecrets($ikm, $info, 64, $salt);
        $this->assertEquals($okm, $actualOutput);
    }
}
