package com.xsolla.android.sdk;

import java.util.HashMap;
import java.util.Random;

public class XsollaObject {
    private static final HashMap<Long, XsollaObject> sRegisteredObjects;
    private long mRegisteredObjectId = 0;

    static {
        sRegisteredObjects = new HashMap<Long, XsollaObject>();
    }

    /**
     * Returns object saved in local cache
     *
     * @param registeredObjectId Registered object id
     * @return Object which was saved with registerObject() method
     */
    public static XsollaObject getRegisteredObject(long registeredObjectId) {
        return sRegisteredObjects.get(registeredObjectId);
    }

    /**
     * Saves object in local cache for future use. Always call unregisterObject() after use
     *
     * @return Registered object id
     */
    public long registerObject() {
        Random rand = new Random();
        while (true) {
            long nextRand = rand.nextLong();
            if (sRegisteredObjects.containsKey(nextRand))
                continue;
            if (nextRand == 0)
                continue;
            sRegisteredObjects.put(nextRand, this);
            mRegisteredObjectId = nextRand;
            return nextRand;
        }
    }

    /**
     * Unregister object from local cache.
     */
    public void unregisterObject() {
        sRegisteredObjects.remove(mRegisteredObjectId);
        mRegisteredObjectId = 0;
    }

}
