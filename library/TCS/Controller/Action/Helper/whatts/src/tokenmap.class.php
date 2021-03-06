<?php

class TokenMap
{
    private static $primaryStrings = [
          '',
          '',
          '',
          'account',
          'ack',
          'action',
          'active',
          'add',
          'after',
          'all',
          'allow',
          'apple',
          'audio',
          'auth',
          'author',
          'available',
          'bad-protocol',
          'bad-request',
          'before',
          'bits',
          'body',
          'broadcast',
          'cancel',
          'category',
          'challenge',
          'chat',
          'clean',
          'code',
          'composing',
          'config',
          'contacts',
          'count',
          'create',
          'creation',
          'debug',
          'default',
          'delete',
          'delivery',
          'delta',
          'deny',
          'digest',
          'dirty',
          'duplicate',
          'elapsed',
          'enable',
          'encoding',
          'encrypt',
          'error',
          'event',
          'expiration',
          'expired',
          'fail',
          'failure',
          'false',
          'favorites',
          'feature',
          'features',
          'feature-not-implemented',
          'field',
          'file',
          'filehash',
          'first',
          'free',
          'from',
          'g.us',
          'gcm',
          'get',
          'google',
          'group',
          'groups',
          'groups_v2',
          'http://etherx.jabber.org/streams',
          'http://jabber.org/protocol/chatstates',
          'ib',
          'id',
          'image',
          'img',
          'index',
          'internal-server-error',
          'ip',
          'iq',
          'item-not-found',
          'item',
          'jabber:iq:last',
          'jabber:iq:privacy',
          'jabber:x:event',
          'jid',
          'kind',
          'last',
          'leave',
          'list',
          'max',
          'mechanism',
          'media',
          'message_acks',
          'message',
          'method',
          'microsoft',
          'mimetype',
          'missing',
          'modify',
          'msg',
          'mute',
          'name',
          'nokia',
          'none',
          'not-acceptable',
          'not-allowed',
          'not-authorized',
          'notification',
          'notify',
          'off',
          'offline',
          'order',
          'owner',
          'owning',
          'p_o',
          'p_t',
          'paid',
          'participant',
          'participants',
          'participating',
          'paused',
          'picture',
          'pin',
          'ping',
          'pkmsg',
          'platform',
          'port',
          'presence',
          'preview',
          'probe',
          'prop',
          'props',
          'qcount',
          'query',
          'raw',
          'read',
          'readreceipts',
          'reason',
          'receipt',
          'relay',
          'remote-server-timeout',
          'remove',
          'request',
          'required',
          'resource-constraint',
          'resource',
          'response',
          'result',
          'retry',
          'rim',
          's_o',
          's_t',
          's.us',
          's.whatsapp.net',
          'seconds',
          'server-error',
          'server',
          'service-unavailable',
          'set',
          'show',
          'silent',
          'size',
          'skmsg',
          'stat',
          'state',
          'status',
          'stream:error',
          'stream:features',
          'subject',
          'subscribe',
          'success',
          'sync',
          't',
          'text',
          'timeout',
          'timestamp',
          'tizen',
          'to',
          'true',
          'type',
          'unavailable',
          'unsubscribe',
          'upgrade',
          'uri',
          'url',
          'urn:ietf:params:xml:ns:xmpp-sasl',
          'urn:ietf:params:xml:ns:xmpp-stanzas',
          'urn:ietf:params:xml:ns:xmpp-streams',
          'urn:xmpp:ping',
          'urn:xmpp:whatsapp:account',
          'urn:xmpp:whatsapp:dirty',
          'urn:xmpp:whatsapp:mms',
          'urn:xmpp:whatsapp:push',
          'urn:xmpp:whatsapp',
          'user',
          'user-not-found',
          'v',
          'value',
          'version',
          'voip',
          'w:g',
          'w:p:r',
          'w:p',
          'w:profile:picture',
          'w',
          'wait',
          'WAUTH-2',
          'xmlns:stream',
          'xmlns',
          '1',
          'chatstate',
          'crypto',
          'phash',
          'enc',
          'class',
          'off_cnt',
          'w:g2',
          'promote',
          'demote',
          'creator',
          'background',
          'backoff',
          'chunked',
          'context',
          'full',
          'in',
          'interactive',
          'out',
          'registration',
          'sid',
          'urn:xmpp:whatsapp:sync',
          'flt',
          's16',
          'u8',
      ];

    private static $secondaryStrings = [
          'adpcm',
          'amrnb',
          'amrwb',
          'mp3',
          'pcm',
          'qcelp',
          'wma',
          'h263',
          'h264',
          'jpeg',
          'mpeg4',
          'wmv',
          'audio/3gpp',
          'audio/aac',
          'audio/amr',
          'audio/mp4',
          'audio/mpeg',
          'audio/ogg',
          'audio/qcelp',
          'audio/wav',
          'audio/webm',
          'audio/x-caf',
          'audio/x-ms-wma',
          'image/gif',
          'image/jpeg',
          'image/png',
          'video/3gpp',
          'video/avi',
          'video/mp4',
          'video/mpeg',
          'video/quicktime',
          'video/x-flv',
          'video/x-ms-asf',
          '302',
          '400',
          '401',
          '402',
          '403',
          '404',
          '405',
          '406',
          '407',
          '409',
          '410',
          '500',
          '501',
          '503',
          '504',
          'abitrate',
          'acodec',
          'app_uptime',
          'asampfmt',
          'asampfreq',
          'clear',
          'conflict',
          'conn_no_nna',
          'cost',
          'currency',
          'duration',
          'extend',
          'fps',
          'g_notify',
          'g_sound',
          'gone',
          'google_play',
          'hash',
          'height',
          'invalid',
          'jid-malformed',
          'latitude',
          'lc',
          'lg',
          'live',
          'location',
          'log',
          'longitude',
          'max_groups',
          'max_participants',
          'max_subject',
          'mode',
          'napi_version',
          'normalize',
          'orighash',
          'origin',
          'passive',
          'password',
          'played',
          'policy-violation',
          'pop_mean_time',
          'pop_plus_minus',
          'price',
          'pricing',
          'redeem',
          'Replaced by new connection',
          'resume',
          'signature',
          'sound',
          'source',
          'system-shutdown',
          'username',
          'vbitrate',
          'vcard',
          'vcodec',
          'video',
          'width',
          'xml-not-well-formed',
          'checkmarks',
          'image_max_edge',
          'image_max_kbytes',
          'image_quality',
          'ka',
          'ka_grow',
          'ka_shrink',
          'newmedia',
          'library',
          'caption',
          'forward',
          'c0',
          'c1',
          'c2',
          'c3',
          'clock_skew',
          'cts',
          'k0',
          'k1',
          'login_rtt',
          'm_id',
          'nna_msg_rtt',
          'nna_no_off_count',
          'nna_offline_ratio',
          'nna_push_rtt',
          'no_nna_con_count',
          'off_msg_rtt',
          'on_msg_rtt',
          'stat_name',
          'sts',
          'suspect_conn',
          'lists',
          'self',
          'qr',
          'web',
          'w:b',
          'recipient',
          'w:stats',
          'forbidden',
          'max_list_recipients',
          'en-AU',
          'en-GB',
          'es-MX',
          'pt-PT',
          'zh-Hans',
          'zh-Hant',
          'relayelection',
          'relaylatency',
          'interruption',
          'Bell.caf',
          'Boing.caf',
          'Glass.caf',
          'Harp.caf',
          'TimePassing.caf',
          'Tri-tone.caf',
          'Xylophone.caf',
          'aurora.m4r',
          'bamboo.m4r',
          'chord.m4r',
          'circles.m4r',
          'complete.m4r',
          'hello.m4r',
          'input.m4r',
          'keys.m4r',
          'note.m4r',
          'popcorn.m4r',
          'pulse.m4r',
          'synth.m4r',
          'Apex.m4r',
          'Beacon.m4r',
          'Bulletin.m4r',
          'By The Seaside.m4r',
          'Chimes.m4r',
          'Circuit.m4r',
          'Constellation.m4r',
          'Cosmic.m4r',
          'Crystals.m4r',
          'Hillside.m4r',
          'Illuminate.m4r',
          'Night Owl.m4r',
          'Opening.m4r',
          'Playtime.m4r',
          'Presto.m4r',
          'Radar.m4r',
          'Radiate.m4r',
          'Ripples.m4r',
          'Sencha.m4r',
          'Signal.m4r',
          'Silk.m4r',
          'Slow Rise.m4r',
          'Stargaze.m4r',
          'Summit.m4r',
          'Twinkle.m4r',
          'Uplift.m4r',
          'Waves.m4r',
          'eligible',
          'planned',
          'current',
          'future',
          'disable',
          'expire',
          'start',
          'stop',
          'accuracy',
          'speed',
          'bearing',
          'recording',
          'key',
          'identity',
          'w:gp2',
          'admin',
          'locked',
          'unlocked',
          'new',
          'battery',
          'archive',
          'adm',
          'plaintext_size',
          'plaintext_disabled',
          'plaintext_reenable_threshold',
          'compressed_size',
          'delivered',
          'everyone',
          'transport',
          'mspes',
          'e2e_groups',
          'e2e_images',
          'encr_media',
          'encrypt_v2',
          'encrypt_image',
          'encrypt_sends_push',
          'force_long_connect',
          'audio_opus',
          'video_max_edge',
          'call-id',
          'call',
          'preaccept',
          'accept',
          'offer',
          'reject',
          'busy',
          'te',
          'terminate',
          'begin',
          'end',
          'opus',
          'rtt',
          'token',
          'priority',
          'p2p',
          'rate',
          'amr',
          'ptt',
          'srtp',
          'os',
          'browser',
          'encrypt_group_gen2',
      ];

    public static function TryGetToken($string, &$subdict, &$token)
    {
        $foo = array_search($string, self::$primaryStrings);
        if ($foo) {
            $token = $foo;

            return true;
        }
        $foo = array_search($string, self::$secondaryStrings);
        if ($foo) {
            $subdict = true;
            $token = $foo;

            return true;
        }

        return false;
    }

    public static function GetToken($token, &$subdict, &$string)
    {
        //override subdict
        if (!$subdict && $token >= 236 && $token < (236 + count(self::$secondaryStrings))) {
            $subdict = true;
        }

        if ($subdict) {
            $tokenMap = self::$secondaryStrings;
        } else {
            $tokenMap = self::$primaryStrings;
        }

        if ($token < 0 || $token > count($tokenMap)) {
            return; //fail
        }

        $string = $tokenMap[$token];
        if (!$string) {
            throw new Exception('Invalid token/length in GetToken');
        }
    }
}
