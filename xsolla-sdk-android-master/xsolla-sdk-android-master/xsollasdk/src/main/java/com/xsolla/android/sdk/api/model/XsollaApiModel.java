package com.xsolla.android.sdk.api.model;

import android.util.SparseArray;

import com.fasterxml.jackson.databind.JsonNode;

import org.json.JSONException;

import java.io.IOException;

/**
 * Root class for all models.
 * model is also allows you to store some object inside as a tag.
 * These objects are retained by hard links,
 * and never will be saved during parcelization.
 */
public class XsollaApiModel {

    public JsonNode fields;
    /**
     * The model's tag.
     */
    private Object mTag;

    /**
     * Map used to store model's tags.
     */
    private SparseArray<Object> mKeyedTags;

    /**
     * Creates empty model
     */
    public XsollaApiModel() {

    }

    /**
     * Returns this model's tag.
     *
     * @return the Object stored in this model as a tag
     * @see #setTag(Object)
     * @see #getTag(int)
     */
    public Object getTag() {
        return mTag;
    }

    /**
     * Sets the tag associated with this model. A tag can be used to store
     * data within a model without resorting to another data structure.
     *
     * @param tag an Object to tag the model with
     * @see #getTag()
     * @see #setTag(int, Object)
     */
    public void setTag(Object tag) {
        mTag = tag;
    }

    /**
     * Returns the tag associated with this model and the specified key.
     *
     * @param key The key identifying the tag
     * @return the Object stored in this model as a tag
     * @see #setTag(int, Object)
     * @see #getTag()
     */
    public Object getTag(int key) {
        if (mKeyedTags != null) return mKeyedTags.get(key);
        return null;
    }

    /**
     * Sets a tag associated with this model and a key. A tag can be used
     * to store data within a model without resorting to another
     * data structure.
     *
     * @see #setTag(Object)
     * @see #getTag(int)
     */
    public void setTag(int key, final Object tag) {
        if (mKeyedTags == null) {
            mKeyedTags = new SparseArray<Object>(2);
        }
        mKeyedTags.put(key, tag);
    }

    public XsollaApiModel(JsonNode node) throws JSONException, IOException {
        parse(node);
    }

    /**
     * Parses object from source.
     *
     * @param rootNode server API object.
     * @return this object.
     * @throws JSONException if any critical error occurred while parsing.
     */
    public XsollaApiModel parse(JsonNode rootNode) throws IOException {
        return null;
    }
}
